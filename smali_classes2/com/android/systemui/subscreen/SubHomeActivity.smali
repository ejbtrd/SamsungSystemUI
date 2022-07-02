.class public Lcom/android/systemui/subscreen/SubHomeActivity;
.super Landroid/app/Activity;
.source "SubHomeActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SubHomeActivity"


# instance fields
.field private final mSettingsHelperLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubScreenManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    sget-object v0, Lcom/android/systemui/subscreen/SubHomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "SubHomeActivity() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubHomeActivity;->mSubScreenManagerLazy:Ldagger/Lazy;

    .line 40
    iput-object p2, p0, Lcom/android/systemui/subscreen/SubHomeActivity;->mSettingsHelperLazy:Ldagger/Lazy;

    return-void
.end method

.method private isSubDisplay()Z
    .locals 4

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 113
    sget-object p0, Lcom/android/systemui/subscreen/SubHomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "isSubDisplay() display is null"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 118
    sget-object v1, Lcom/android/systemui/subscreen/SubHomeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSubDisplay() not in sub display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    return v2
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 127
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 128
    sget-object v0, Lcom/android/systemui/subscreen/SubHomeActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onConfigurationChanged() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubHomeActivity;->mSubScreenManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/subscreen/SubScreenManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget-object p1, Lcom/android/systemui/subscreen/SubHomeActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onCreate() "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_DEBUG_ACTIVITY_ON_MAIN:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "onCreate() debug mode enabled - shown in Main display"

    .line 49
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubHomeActivity;->isSubDisplay()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "onCreate() finish - not in sub display"

    .line 52
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 58
    :cond_1
    :goto_0
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 65
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 70
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 71
    invoke-interface {p1, v0}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    .line 74
    :cond_3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_4

    const-wide/16 v0, 0x1388

    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    const-wide/16 v0, 0x0

    .line 79
    invoke-virtual {p1, v0, v1}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    .line 80
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 84
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubHomeActivity;->mSubScreenManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-virtual {p1, p0}, Lcom/android/systemui/subscreen/SubScreenManager;->setSubHomeActivity(Lcom/android/systemui/subscreen/SubHomeActivity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 96
    sget-object v0, Lcom/android/systemui/subscreen/SubHomeActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubHomeActivity;->isSubDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_DEBUG_ACTIVITY_ON_MAIN:Z

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubHomeActivity;->mSubScreenManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/subscreen/SubScreenManager;->clearSubHomeActivity(Lcom/android/systemui/subscreen/SubHomeActivity;)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 107
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onResume()V
    .locals 1

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 90
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubHomeActivity;->mSettingsHelperLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->setShowNavigationForSubscreen(Z)V

    return-void
.end method
