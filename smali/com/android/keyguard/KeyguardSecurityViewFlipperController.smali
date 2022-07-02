.class public Lcom/android/keyguard/KeyguardSecurityViewFlipperController;
.super Lcom/android/systemui/util/ViewController;
.source "KeyguardSecurityViewFlipperController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityViewFlipperController$NullKeyguardInputViewController;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/keyguard/KeyguardSecurityViewFlipper;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/keyguard/KeyguardInputViewController<",
            "Lcom/android/keyguard/KeyguardInputView;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mEmergencyButtonControllerFactory:Lcom/android/keyguard/EmergencyButtonController$Factory;

.field private final mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/KeyguardSecurityViewFlipper;Landroid/view/LayoutInflater;Lcom/android/keyguard/KeyguardInputViewController$Factory;Lcom/android/keyguard/EmergencyButtonController$Factory;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mChildren:Ljava/util/List;

    .line 60
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

    .line 61
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 62
    iput-object p4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mEmergencyButtonControllerFactory:Lcom/android/keyguard/EmergencyButtonController$Factory;

    return-void
.end method

.method private getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 1

    .line 137
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getLayoutIdFor securityMode = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardSecurityView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController$1;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 218
    :pswitch_0
    sget p0, Lcom/android/systemui/R$layout;->keyguard_ucm_view:I

    return p0

    .line 214
    :pswitch_1
    sget p0, Lcom/android/systemui/R$layout;->keyguard_carrier_password_view:I

    return p0

    .line 210
    :pswitch_2
    sget p0, Lcom/android/systemui/R$layout;->keyguard_carrier_view:I

    return p0

    .line 206
    :pswitch_3
    sget p0, Lcom/android/systemui/R$layout;->keyguard_knox_guard_view:I

    return p0

    .line 202
    :pswitch_4
    sget p0, Lcom/android/systemui/R$layout;->keyguard_rmm_view:I

    return p0

    .line 196
    :pswitch_5
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 197
    sget p0, Lcom/android/systemui/R$layout;->keyguard_fmm_view_tablet:I

    goto :goto_0

    .line 198
    :cond_0
    sget p0, Lcom/android/systemui/R$layout;->keyguard_fmm_view:I

    :goto_0
    return p0

    .line 183
    :pswitch_6
    sget-boolean p0, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERSO_LOCK:Z

    if-eqz p0, :cond_1

    .line 184
    sget p0, Lcom/android/systemui/R$layout;->keyguard_sec_sim_perso_view:I

    return p0

    .line 187
    :cond_1
    :pswitch_7
    sget-boolean p0, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    if-eqz p0, :cond_2

    .line 188
    sget p0, Lcom/android/systemui/R$layout;->keyguard_swipe_view:I

    return p0

    .line 192
    :cond_2
    :pswitch_8
    sget p0, Lcom/android/systemui/R$layout;->keyguard_admin_view:I

    return p0

    .line 174
    :pswitch_9
    sget-boolean p0, Lcom/android/systemui/LsRune;->SECURITY_NOT_REQUIRE_SIMPUK_CODE:Z

    if-eqz p0, :cond_3

    .line 175
    sget p0, Lcom/android/systemui/R$layout;->keyguard_sec_sim_puk_view_tmo:I

    goto :goto_1

    .line 176
    :cond_3
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 177
    sget p0, Lcom/android/systemui/R$layout;->keyguard_sec_sim_puk_view_tablet:I

    goto :goto_1

    .line 178
    :cond_4
    sget p0, Lcom/android/systemui/R$layout;->keyguard_sec_sim_puk_view:I

    :goto_1
    return p0

    .line 166
    :pswitch_a
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 167
    sget p0, Lcom/android/systemui/R$layout;->keyguard_sec_sim_pin_view_tablet:I

    goto :goto_2

    .line 168
    :cond_5
    sget p0, Lcom/android/systemui/R$layout;->keyguard_sec_sim_pin_view:I

    :goto_2
    return p0

    .line 158
    :pswitch_b
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 159
    sget p0, Lcom/android/systemui/R$layout;->keyguard_sec_password_view_tablet:I

    goto :goto_3

    .line 160
    :cond_6
    sget p0, Lcom/android/systemui/R$layout;->keyguard_sec_password_view:I

    :goto_3
    return p0

    .line 150
    :pswitch_c
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 151
    sget p0, Lcom/android/systemui/R$layout;->keyguard_sec_pin_view_tablet:I

    goto :goto_4

    .line 152
    :cond_7
    sget p0, Lcom/android/systemui/R$layout;->keyguard_sec_pin_view:I

    :goto_4
    return p0

    .line 142
    :pswitch_d
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 143
    sget p0, Lcom/android/systemui/R$layout;->keyguard_sec_pattern_view_tablet:I

    goto :goto_5

    .line 144
    :cond_8
    sget p0, Lcom/android/systemui/R$layout;->keyguard_sec_pattern_view:I

    :goto_5
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;)Lcom/android/keyguard/KeyguardInputViewController;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;",
            "Lcom/android/keyguard/KeyguardSecurityCallback;",
            ")",
            "Lcom/android/keyguard/KeyguardInputViewController<",
            "Lcom/android/keyguard/KeyguardInputView;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardInputViewController;

    .line 102
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardInputViewController;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    if-ne v3, p1, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_2

    .line 108
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_2

    .line 111
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inflating id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KeyguardSecurityView"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardInputView;

    .line 117
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 118
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/keyguard/KeyguardInputViewController$Factory;->create(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;)Lcom/android/keyguard/KeyguardInputViewController;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mChildren:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez v1, :cond_3

    .line 127
    new-instance v1, Lcom/android/keyguard/KeyguardSecurityViewFlipperController$NullKeyguardInputViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mEmergencyButtonControllerFactory:Lcom/android/keyguard/EmergencyButtonController$Factory;

    .line 129
    invoke-virtual {p0, v2}, Lcom/android/keyguard/EmergencyButtonController$Factory;->create(Lcom/android/keyguard/EmergencyButton;)Lcom/android/keyguard/EmergencyButtonController;

    move-result-object p0

    invoke-direct {v1, p1, p2, p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController$NullKeyguardInputViewController;-><init>(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;)V

    :cond_3
    return-object v1
.end method

.method protected onViewAttached()V
    .locals 0

    return-void
.end method

.method protected onViewDetached()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardInputViewController;

    .line 78
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardInputViewController;->getIndexIn(Lcom/android/keyguard/KeyguardSecurityViewFlipper;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 79
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardInputViewController;->reset()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public show(Lcom/android/keyguard/KeyguardInputViewController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/KeyguardInputViewController<",
            "Lcom/android/keyguard/KeyguardInputView;",
            ">;)V"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardInputViewController;->getIndexIn(Lcom/android/keyguard/KeyguardSecurityViewFlipper;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 229
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p0, p1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    :cond_0
    return-void
.end method
