.class public Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;
.super Ljava/lang/Object;
.source "SubscreenSignalInfoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView$Callback;

.field private mCarrierText:Lcom/android/keyguard/CarrierText;

.field mContext:Landroid/content/Context;

.field private mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

.field private mInitViewDone:Z

.field private mLayout:Landroid/widget/FrameLayout;

.field public mOnTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView$1;-><init>(Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->mContext:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->mLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;)Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView$Callback;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->mCallback:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView$Callback;

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 43
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->mLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->mLayout:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->mLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->subscreen_signal_info:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 67
    sget v1, Lcom/android/systemui/R$id;->subscreen_statusIcons:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    .line 68
    sget v2, Lcom/android/systemui/R$id;->subscreen_carrier_text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    const/4 v0, 0x0

    .line 70
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setShouldRestrictIcons(Z)V

    const/4 v0, 0x1

    .line 71
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setSubScreenFlag(Z)V

    .line 72
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    const-class v3, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/CommandQueue;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    .line 73
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$color;->status_bar_battery_frame_light_color:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    .line 74
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    sget-object v2, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;->SUBSCREEN:Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->setType(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;)V

    .line 75
    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 76
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->mInitViewDone:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->mLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public makeView()V
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->mInitViewDone:Z

    if-nez v0, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->initView()V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView$Callback;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->mCallback:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView$Callback;

    return-void
.end method

.method public startMarquee()V
    .locals 1

    .line 81
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public stopMarquee()V
    .locals 1

    .line 87
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    return-void
.end method
