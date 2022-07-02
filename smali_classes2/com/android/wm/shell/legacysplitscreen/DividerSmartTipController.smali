.class public Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;
.super Ljava/lang/Object;
.source "DividerSmartTipController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDividerPreference:Landroid/content/SharedPreferences;

.field private final mHandler:Landroid/os/Handler;

.field private mIsFirstSplitEnter:Z

.field private mIsShowRequested:Z

.field private final mSmartTipPopupPreferences:Landroid/content/SharedPreferences;

.field private final mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

.field private mSplitSmartTip:Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;

.field private mTipShown:Z


# direct methods
.method public static synthetic $r8$lambda$-t2YXfevJuyodqtrY05GTqy97pg(Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->lambda$requestToShow$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$VQQ7Rql2tUQ6w6tpQo9CKlYc1ho(Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->dismiss()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    .line 36
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mHandler:Landroid/os/Handler;

    const-string p2, "DividerPref"

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mDividerPreference:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "split_first_enter"

    const/4 v2, 0x1

    .line 39
    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mIsFirstSplitEnter:Z

    const-string p2, "DividerSmartTipPopup"

    .line 41
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mSmartTipPopupPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo p2, "tip_shown"

    .line 42
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mTipShown:Z

    return-void
.end method

.method private dismiss()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mSplitSmartTip:Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->dismissTipPopUp()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mSplitSmartTip:Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;

    return-void
.end method

.method private getDividerView()Lcom/android/wm/shell/legacysplitscreen/DividerView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getDividerView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object p0

    return-object p0
.end method

.method private isDividerVisible()Z
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isDividerVisible()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$requestToShow$0()V
    .locals 4

    .line 52
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->isDividerVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "DividerTipController"

    const-string v2, "Divider is not visible. Abort to show divider smart tip."

    .line 53
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iput-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mIsShowRequested:Z

    return-void

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->getDividerView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object v0

    .line 58
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 59
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateDividerSmartTipPosition(Landroid/graphics/Point;)V

    .line 60
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getDockSide()I

    move-result v0

    invoke-direct {p0, v3, v2, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->show(III)V

    .line 61
    invoke-direct {p0, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->setSplitFirstEnterPref(Z)V

    return-void
.end method

.method private setSplitFirstEnterPref(Z)V
    .locals 1

    .line 98
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mIsFirstSplitEnter:Z

    .line 99
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mDividerPreference:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "split_first_enter"

    .line 100
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setTipShown(Z)V
    .locals 1

    .line 91
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mTipShown:Z

    .line 92
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mSmartTipPopupPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "tip_shown"

    .line 93
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private show(III)V
    .locals 2

    .line 74
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mTipShown:Z

    if-eqz v0, :cond_0

    const-string p0, "DividerTipController"

    const-string p1, "divider smart tip already shown"

    .line 75
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 78
    :cond_0
    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mSplitSmartTip:Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;

    .line 80
    invoke-static {p3}, Lcom/android/internal/policy/DockedDividerUtils;->isHorizontalDivision(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 81
    iget-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wm/shell/R$string;->str_drag_top_bottom_divider_smart_tip:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 83
    :cond_1
    iget-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wm/shell/R$string;->str_drag_left_right_divider_smart_tip:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mSplitSmartTip:Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;

    invoke-virtual {v0, p3}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->setMessage(Ljava/lang/String;)V

    .line 86
    iget-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mSplitSmartTip:Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;

    const/4 v0, 0x1

    invoke-virtual {p3, p1, p2, v0, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->requestShowPopUp(IIZZ)V

    .line 87
    invoke-direct {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->setTipShown(Z)V

    return-void
.end method


# virtual methods
.method isAvailableToShow()Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mIsFirstSplitEnter:Z

    return p0
.end method

.method isShowRequested()Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mIsShowRequested:Z

    return p0
.end method

.method requestToDismiss()V
    .locals 2

    .line 105
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mIsShowRequested:Z

    if-nez v0, :cond_0

    const-string p0, "DividerTipController"

    const-string v0, "DividerSmartTip wasn\'t requested to show. Ignore dismiss-request."

    .line 106
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mIsShowRequested:Z

    .line 110
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method requestToShow()V
    .locals 2

    .line 46
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mIsShowRequested:Z

    if-eqz v0, :cond_0

    const-string p0, "DividerTipController"

    const-string v0, "DividerSmartTip was requested to show already. Ignore show-request."

    .line 47
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mIsShowRequested:Z

    .line 51
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
