.class public abstract Lcom/android/keyguard/KeyguardInputViewController;
.super Lcom/android/systemui/util/ViewController;
.source "KeyguardInputViewController.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardInputViewController$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/keyguard/KeyguardInputView;",
        ">",
        "Lcom/android/systemui/util/ViewController<",
        "TT;>;",
        "Lcom/android/keyguard/KeyguardSecurityView;",
        "Lcom/android/systemui/widget/SystemUIWidgetCallback;"
    }
.end annotation


# instance fields
.field private final mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field private final mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

.field private final mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mPaused:Z

.field private final mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

.field private final mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private final mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;",
            "Lcom/android/keyguard/KeyguardSecurityCallback;",
            "Lcom/android/keyguard/EmergencyButtonController;",
            ")V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 74
    new-instance v0, Lcom/android/keyguard/KeyguardInputViewController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardInputViewController$1;-><init>(Lcom/android/keyguard/KeyguardInputViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 98
    iput-object p2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 99
    iput-object p3, p0, Lcom/android/keyguard/KeyguardInputViewController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move-object p3, p2

    goto :goto_0

    .line 100
    :cond_0
    sget p3, Lcom/android/systemui/R$id;->emergency_call_button:I

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/keyguard/EmergencyButton;

    :goto_0
    iput-object p3, p0, Lcom/android/keyguard/KeyguardInputViewController;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 101
    iput-object p4, p0, Lcom/android/keyguard/KeyguardInputViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    if-nez p1, :cond_1

    move-object p3, p2

    goto :goto_1

    .line 103
    :cond_1
    invoke-static {p1}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object p3

    :goto_1
    iput-object p3, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez p1, :cond_2

    goto :goto_2

    .line 104
    :cond_2
    sget p2, Lcom/android/systemui/R$id;->keyguard_sub_help_text:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/android/keyguard/KeyguardMessageArea;

    :goto_2
    iput-object p2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    return-void
.end method


# virtual methods
.method public getIndexIn(Lcom/android/keyguard/KeyguardSecurityViewFlipper;)I
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/widget/ViewFlipper;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method protected getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 132
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    const-string v1, "KeyguardInputViewController"

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 133
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDualDarInnerAuthShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPaused:Z

    if-eqz v0, :cond_1

    const-string v0, "isDualDarInnerAuthShowing() return true and getKeyguardSecurityCallback() returns NULL callback"

    .line 135
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object p0

    :cond_0
    const-string v0, "getKeyguardSecurityCallback() returns NULL callback"

    .line 140
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object p0

    .line 150
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object p0
.end method

.method getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0
.end method

.method public isPaused()Z
    .locals 0

    .line 164
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPaused:Z

    return p0
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPaused:Z

    return-void
.end method

.method public onResume(I)V
    .locals 0

    const/4 p1, 0x0

    .line 169
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPaused:Z

    return-void
.end method

.method protected onViewAttached()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 111
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_OPEN_THEME:Z

    if-eqz v0, :cond_0

    const-string v0, "background"

    .line 113
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    .line 112
    invoke-static {p0, v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    :cond_0
    return-void
.end method

.method protected onViewDetached()V
    .locals 1

    .line 120
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_OPEN_THEME:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method protected setMessageTimeout(Z)V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0xbb8

    .line 213
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    .line 214
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    :cond_1
    return-void
.end method

.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .locals 0

    return-void
.end method

.method public showPromptReason(I)V
    .locals 0

    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputView;->startAppearAnimation()V

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardInputView;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method
