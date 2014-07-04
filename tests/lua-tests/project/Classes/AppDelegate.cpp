#include "cocos2d.h"
#include "AppDelegate.h"
#include "CCLuaEngine.h"
#include "audio/include/SimpleAudioEngine.h"
#include "lua_assetsmanager_test_sample.h"

using namespace CocosDenshion;

USING_NS_CC;

AppDelegate::AppDelegate()
{
}

AppDelegate::~AppDelegate()
{
    SimpleAudioEngine::end();
}

bool AppDelegate::applicationDidFinishLaunching()
{
    auto director = Director::getInstance();
    auto glview = director->getOpenGLView();
    if(!glview) {
        glview = GLView::createWithRect("Lua Tests", Rect(0,0,900,640));
        director->setOpenGLView(glview);
    }

    // turn on display FPS
    director->setDisplayStats(true);

    // set FPS. the default value is 1.0/60 if you don't call this
    director->setAnimationInterval(1.0 / 60);

    auto screenSize = glview->getFrameSize();

    auto designSize = Size(480, 320);

    auto pFileUtils = FileUtils::getInstance();

    if (screenSize.height > 320)
    {
        auto resourceSize = Size(960, 640);
        std::vector<std::string> searchPaths;
        searchPaths.push_back("hd");
        pFileUtils->setSearchPaths(searchPaths);
        director->setContentScaleFactor(resourceSize.height/designSize.height);
    }

    glview->setDesignResolutionSize(designSize.width, designSize.height, ResolutionPolicy::FIXED_HEIGHT);

    // register lua engine
    LuaEngine* pEngine = LuaEngine::getInstance();
    ScriptEngineManager::getInstance()->setScriptEngine(pEngine);

#if (CC_TARGET_PLATFORM == CC_PLATFORM_WIN32 || CC_TARGET_PLATFORM == CC_PLATFORM_ANDROID ||CC_TARGET_PLATFORM == CC_PLATFORM_IOS || CC_TARGET_PLATFORM == CC_PLATFORM_MAC)
    LuaStack* stack = pEngine->getLuaStack();
    register_assetsmanager_test_sample(stack->getLuaState());
#endif

#if (CC_TARGET_PLATFORM == CC_PLATFORM_IOS || CC_TARGET_PLATFORM == CC_PLATFORM_MAC)
    std::string resPrefix("");
#else
    std::string resPrefix("res/");
#endif

    std::vector<std::string> searchPaths = pFileUtils->getSearchPaths();
    searchPaths.insert(searchPaths.begin(), resPrefix);

    searchPaths.insert(searchPaths.begin(), resPrefix + "cocosbuilderRes");
    if (screenSize.height > 320)
    {
        searchPaths.insert(searchPaths.begin(), resPrefix + "hd");
        searchPaths.insert(searchPaths.begin(), resPrefix + "ccs-res");
        searchPaths.insert(searchPaths.begin(), resPrefix + "ccs-res/hd");
        searchPaths.insert(searchPaths.begin(), resPrefix + "ccs-res/hd/Images");
        searchPaths.insert(searchPaths.begin(), resPrefix + "ccs-res/hd/scenetest/ArmatureComponentTest");
        searchPaths.insert(searchPaths.begin(), resPrefix + "ccs-res/hd/scenetest/AttributeComponentTest");
        searchPaths.insert(searchPaths.begin(), resPrefix + "ccs-res/hd/scenetest/BackgroundComponentTest");
        searchPaths.insert(searchPaths.begin(), resPrefix + "ccs-res/hd/scenetest/EffectComponentTest");
        searchPaths.insert(searchPaths.begin(), resPrefix + "ccs-res/hd/scenetest/LoadSceneEdtiorFileTest");
        searchPaths.insert(searchPaths.begin(), resPrefix + "ccs-res/hd/scenetest/ParticleComponentTest");
        searchPaths.insert(searchPaths.begin(), resPrefix + "ccs-res/hd/scenetest/SpriteComponentTest");
        searchPaths.insert(searchPaths.begin(), resPrefix + "ccs-res/hd/scenetest/TmxMapComponentTest");
        searchPaths.insert(searchPaths.begin(), resPrefix + "ccs-res/hd/scenetest/UIComponentTest");
        searchPaths.insert(searchPaths.begin(), resPrefix + "ccs-res/hd/scenetest/TriggerTest");
    }
    else
    {
        searchPaths.insert(searchPaths.begin(), resPrefix + "ccs-res/Images");
        searchPaths.insert(searchPaths.begin(), resPrefix + "ccs-res/scenetest/ArmatureComponentTest");
        searchPaths.insert(searchPaths.begin(), resPrefix + "ccs-res/scenetest/AttributeComponentTest");
        searchPaths.insert(searchPaths.begin(), resPrefix + "ccs-res/scenetest/BackgroundComponentTest");
        searchPaths.insert(searchPaths.begin(), resPrefix + "ccs-res/scenetest/EffectComponentTest");
        searchPaths.insert(searchPaths.begin(), resPrefix + "ccs-res/scenetest/LoadSceneEdtiorFileTest");
        searchPaths.insert(searchPaths.begin(), resPrefix + "ccs-res/scenetest/ParticleComponentTest");
        searchPaths.insert(searchPaths.begin(), resPrefix + "ccs-res/scenetest/SpriteComponentTest");
        searchPaths.insert(searchPaths.begin(), resPrefix + "ccs-res/scenetest/TmxMapComponentTest");
        searchPaths.insert(searchPaths.begin(), resPrefix + "ccs-res/scenetest/UIComponentTest");
        searchPaths.insert(searchPaths.begin(), resPrefix + "ccs-res/scenetest/TriggerTest");
    }


    FileUtils::getInstance()->setSearchPaths(searchPaths);

    pEngine->executeScriptFile("src/controller.lua");

    return true;
}

// This function will be called when the app is inactive. When comes a phone call,it's be invoked too
void AppDelegate::applicationDidEnterBackground()
{
    Director::getInstance()->stopAnimation();

    SimpleAudioEngine::getInstance()->pauseBackgroundMusic();
}

// this function will be called when the app is active again
void AppDelegate::applicationWillEnterForeground()
{
    Director::getInstance()->startAnimation();

    SimpleAudioEngine::getInstance()->resumeBackgroundMusic();
}
