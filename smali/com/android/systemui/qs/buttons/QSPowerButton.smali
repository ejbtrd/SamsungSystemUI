.class public Lcom/android/systemui/qs/buttons/QSPowerButton;
.super Landroid/widget/FrameLayout;
.source "QSPowerButton.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPowerButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/buttons/QSPowerButton;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/systemui/qs/buttons/QSPowerButton;->pressPowerButton()V

    return-void
.end method

.method private pressPowerButton()V
    .locals 1

    .line 56
    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {}, Lcom/android/systemui/globalactions/presentation/view/SamsungGlobalActionsDialog;->showGlobalActionsfromQuickPanel()V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "QSPowerButton"

    const-string v0, "!@long press power shutdown by power icon of quickpanel"

    .line 57
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-class p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsComponent;->shutdown()V

    :goto_1
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 37
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 38
    sget v0, Lcom/android/systemui/R$id;->power_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mPowerButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    .line 41
    new-instance v0, Lcom/android/systemui/qs/buttons/QSPowerButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/buttons/QSPowerButton$1;-><init>(Lcom/android/systemui/qs/buttons/QSPowerButton;)V

    .line 51
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mPowerButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
