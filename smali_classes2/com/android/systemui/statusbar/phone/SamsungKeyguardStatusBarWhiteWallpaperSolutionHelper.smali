.class public Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;
.super Ljava/lang/Object;
.source "SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$WhiteSolutionModel;
    }
.end annotation


# instance fields
.field private mBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field private mModel:Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$WhiteSolutionModel;


# direct methods
.method public static synthetic $r8$lambda$jZ-DyNRi8VQM4uxqg88YXhkETss(Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;->lambda$onFinishedWakingUp$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;->mBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    return-void
.end method

.method private synthetic lambda$onFinishedWakingUp$0()V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;->mBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateIconsAndTextColors()V

    return-void
.end method


# virtual methods
.method public checkAndPrintModel()V
    .locals 4

    .line 108
    new-instance v0, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$WhiteSolutionModel;

    const-class v1, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->needDarkFontOfLockIndicator()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;->getFontColor()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;->getFontIntensity()F

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$WhiteSolutionModel;-><init>(Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;ZIF)V

    .line 109
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;->mModel:Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$WhiteSolutionModel;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$WhiteSolutionModel;->isEqual(Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$WhiteSolutionModel;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WhiteSolutionModel [Ori]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;->mModel:Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$WhiteSolutionModel;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$WhiteSolutionModel;->getLogString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", [New]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$WhiteSolutionModel;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecKeyguardStatusBarWhiteWallpaperSolutionHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;->mModel:Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$WhiteSolutionModel;

    :cond_2
    return-void
.end method

.method public getFontColor()I
    .locals 0

    .line 94
    const-class p0, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->getFontColorOfLockIndicator()I

    move-result p0

    return p0
.end method

.method public getFontIntensity()F
    .locals 0

    .line 101
    const-class p0, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->needDarkFontOfLockIndicator()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 47
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 48
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 49
    const-class v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const-wide/16 v1, 0x11

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;->mBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateIconsAndTextColors()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 57
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 58
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 59
    const-class v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    return-void
.end method

.method public onFinishedWakingUp()V
    .locals 2

    .line 87
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 2

    const-wide/16 v0, 0x10

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 76
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLockWallpaper()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 79
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;->mBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateIconsAndTextColors()V

    return-void
.end method
