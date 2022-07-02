.class public Lcom/android/systemui/qs/buttons/QSMumButton;
.super Landroid/widget/FrameLayout;
.source "QSMumButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExpanded:Z

.field private mListening:Z

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field protected mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field mMumAndDexHelper:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field protected mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public static synthetic $r8$lambda$uJhUUxZoP2pn7uc53ljCWPRFg0U(Lcom/android/systemui/qs/buttons/QSMumButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/buttons/QSMumButton;->lambda$setListening$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    new-instance p2, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton;Lcom/android/systemui/qs/buttons/QSMumButton$1;)V

    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMumAndDexHelper:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    .line 53
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mContext:Landroid/content/Context;

    .line 54
    const-class p1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 55
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 56
    const-class p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/buttons/QSMumButton;)Lcom/android/systemui/statusbar/policy/UserInfoController;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/buttons/QSMumButton;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/buttons/QSMumButton;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/buttons/QSMumButton;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mExpanded:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/buttons/QSMumButton;)Landroid/widget/ImageView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserAvatar:Landroid/widget/ImageView;

    return-object p0
.end method

.method private synthetic lambda$setListening$0()V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMumAndDexHelper:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->updateMumSwitchVisibility()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 69
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 70
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMumAndDexHelper:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    if-eqz p0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->init()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/buttons/QSMumButton;->setListening(Z)V

    .line 78
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 80
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMumAndDexHelper:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->destroy()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 62
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 63
    sget v0, Lcom/android/systemui/R$id;->multi_user_switch:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 64
    sget v1, Lcom/android/systemui/R$id;->multi_user_avatar:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserAvatar:Landroid/widget/ImageView;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 102
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mExpanded:Z

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 89
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mListening:Z

    .line 91
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMumAndDexHelper:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 92
    new-instance p1, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public updateVisibility()V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMumAndDexHelper:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->updateMumSwitchVisibility()V

    return-void
.end method
