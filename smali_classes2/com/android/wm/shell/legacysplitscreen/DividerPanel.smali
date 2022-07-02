.class public Lcom/android/wm/shell/legacysplitscreen/DividerPanel;
.super Ljava/lang/Object;
.source "DividerPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/legacysplitscreen/DividerPanel$OnCloseSystemDialogsListener;,
        Lcom/android/wm/shell/legacysplitscreen/DividerPanel$H;,
        Lcom/android/wm/shell/legacysplitscreen/DividerPanel$DividerPanelCallbacks;
    }
.end annotation


# instance fields
.field private mAppPairShortcutController:Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;

.field private mCallbacks:Lcom/android/wm/shell/legacysplitscreen/DividerPanel$DividerPanelCallbacks;

.field private final mContext:Landroid/content/Context;

.field private final mH:Lcom/android/wm/shell/legacysplitscreen/DividerPanel$H;

.field private mIsLongPressOrHover:Z

.field private final mIsSystemUser:Z

.field private final mRemoveRunnable:Ljava/lang/Runnable;

.field private mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

.field private mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

.field private final mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private mView:Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;

.field private final mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;

.field private mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;


# direct methods
.method public static synthetic $r8$lambda$CwvksjkxWzTPn3jQG8vtYJELmZE(Lcom/android/wm/shell/legacysplitscreen/DividerPanel;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->lambda$addDividerPanel$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$e9OmD71uTj3NFutIfKelxTuozHk(Lcom/android/wm/shell/legacysplitscreen/DividerPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->lambda$addDividerPanel$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$hfee2d8F-nJO08NeeyQiHQu5dP0(Lcom/android/wm/shell/legacysplitscreen/DividerPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mIsLongPressOrHover:Z

    .line 70
    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/DividerPanel$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerPanel;)V

    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mRemoveRunnable:Ljava/lang/Runnable;

    .line 80
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mContext:Landroid/content/Context;

    .line 81
    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;

    invoke-direct {v1, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;

    .line 82
    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/DividerPanel$H;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel$H;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerPanel;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mH:Lcom/android/wm/shell/legacysplitscreen/DividerPanel$H;

    .line 83
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mIsSystemUser:Z

    .line 84
    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel$1;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerPanel;)V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    new-instance p0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/legacysplitscreen/DividerPanel;)Lcom/android/wm/shell/legacysplitscreen/DividerPanel$H;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mH:Lcom/android/wm/shell/legacysplitscreen/DividerPanel$H;

    return-object p0
.end method

.method private canSwapTask()Z
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isCellDividerVisible()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private getEnabledAccessibilityServices()Ljava/lang/String;
    .locals 2

    .line 367
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enabled_accessibility_services"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isAddToEdgeEnable()Z
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mAppPairShortcutController:Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->isSupportAppPairPolicy(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "DividerPanel"

    if-nez v0, :cond_0

    const-string p0, "Not support AppPair policy"

    .line 220
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->isEdgeEnable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "Edge disable"

    .line 224
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 227
    :cond_1
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->isAppsEdgeEnable()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "AppsEdge disable"

    .line 228
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 231
    :cond_2
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->isEasyModeOn()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "EasyMode on"

    .line 232
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 235
    :cond_3
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mIsSystemUser:Z

    if-nez v0, :cond_4

    const-string p0, "Not system user"

    .line 236
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 239
    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    const/4 v3, 0x1

    if-ne p0, v0, :cond_5

    .line 240
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isTablet()Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "Is not tablet, or is foldable device, but is in sub-display."

    .line 245
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    return v3
.end method

.method private isAppsEdgeEnable()Z
    .locals 5

    .line 200
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "cocktail_bar_enabled_cocktails"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, ";"

    .line 203
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 204
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    const-string v4, "com.samsung.android.app.appsedge.edgepanel.AppsEdgePanelProvider"

    .line 205
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isEasyModeOn()Z
    .locals 3

    .line 214
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "easy_mode_switch"

    const/4 v1, 0x1

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isEdgeEnable()Z
    .locals 2

    .line 196
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "edge_enable"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isHorizontalDivision()Z
    .locals 1

    .line 256
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$addDividerPanel$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 113
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->removeDividerPanel()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$addDividerPanel$2()V
    .locals 0

    .line 120
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->removeDividerPanel()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->removeDividerPanel()V

    return-void
.end method

.method private scheduleRemoveDividerPanel()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mH:Lcom/android/wm/shell/legacysplitscreen/DividerPanel$H;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mRemoveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->isAccessibilityServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mH:Lcom/android/wm/shell/legacysplitscreen/DividerPanel$H;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mRemoveRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private setButtonListener(Landroid/widget/ImageButton;)V
    .locals 0

    .line 155
    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 157
    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method


# virtual methods
.method addDividerPanel()V
    .locals 8

    .line 110
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$layout;->divider_panel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;

    .line 112
    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/DividerPanel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 120
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/DividerPanel$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerPanel;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;->setOnCloseSystemDialogsListener(Lcom/android/wm/shell/legacysplitscreen/DividerPanel$OnCloseSystemDialogsListener;)V

    .line 128
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;

    sget v1, Lcom/android/wm/shell/R$id;->mw_swap_task_button:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 129
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;

    sget v2, Lcom/android/wm/shell/R$id;->mw_addpair_button:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 130
    invoke-direct {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->setButtonListener(Landroid/widget/ImageButton;)V

    .line 131
    invoke-direct {p0, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->setButtonListener(Landroid/widget/ImageButton;)V

    .line 133
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->isHorizontalDivision()Z

    move-result v6

    .line 134
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->canSwapTask()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->isAddToEdgeEnable()Z

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    .line 135
    invoke-virtual {v3}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->canChangeDockSide()Z

    move-result v3

    .line 134
    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;->updateButton(ZZZZ)V

    .line 136
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;->calculateWidth()I

    move-result v4

    .line 137
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->mw_divider_panel_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 139
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 140
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0, v7}, Lcom/android/wm/shell/common/DisplayLayout;->getSplitAreaBounds(Landroid/graphics/Rect;)V

    .line 141
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;->add(Landroid/view/View;IIZLandroid/graphics/Rect;)V

    .line 142
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->scheduleRemoveDividerPanel()V

    .line 145
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mContext:Landroid/content/Context;

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/wm/shell/R$string;->accessibility_divider_opened:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 145
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 149
    sget-boolean p0, Lcom/android/wm/shell/CoreShellRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz p0, :cond_0

    const-string p0, "1031"

    .line 150
    invoke-static {p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method injectDependencies(Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Lcom/android/wm/shell/legacysplitscreen/DividerPanel$DividerPanelCallbacks;Lcom/android/wm/shell/legacysplitscreen/DividerView;Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    .line 97
    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    .line 98
    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    .line 99
    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mCallbacks:Lcom/android/wm/shell/legacysplitscreen/DividerPanel$DividerPanelCallbacks;

    .line 100
    iput-object p6, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mAppPairShortcutController:Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;

    .line 101
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;

    invoke-virtual {p0, p5}, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;->injectDependencies(Lcom/android/wm/shell/legacysplitscreen/DividerView;)V

    return-void
.end method

.method public isAccessibilityServiceEnabled()Z
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->isScreenReaderEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->isUniversalSwitchEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isScreenReaderEnabled()Z
    .locals 2

    .line 385
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->getEnabledAccessibilityServices()Ljava/lang/String;

    move-result-object p0

    .line 386
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "(?i).*com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService.*"

    .line 387
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    .line 388
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "(?i).*com.google.android.marvin.talkback/.TalkBackService.*"

    .line 389
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "(?i).*com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService.*"

    .line 390
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method isSupportPanelOpenPolicy()Z
    .locals 2

    .line 320
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_2

    .line 321
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 322
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.app.appsedge"

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    .line 328
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isUniversalSwitchEnabled()Z
    .locals 1

    .line 372
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->getEnabledAccessibilityServices()Ljava/lang/String;

    move-result-object p0

    .line 373
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "(?i).*com.samsung.accessibility.universalswitch.UniversalSwitchService.*"

    .line 375
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/wm/shell/R$id;->mw_change_dock_side_button:I

    if-ne v0, v1, :cond_1

    .line 291
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->changeDockSide()V

    .line 293
    sget-boolean p1, Lcom/android/wm/shell/CoreShellRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz p1, :cond_3

    .line 294
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->isHorizontalDivision()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Vertical split -> Horizontal split"

    goto :goto_0

    :cond_0
    const-string p1, "Horizontal split -> Vertical split"

    :goto_0
    const-string v0, "1032"

    .line 296
    invoke-static {v0, p1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 299
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/wm/shell/R$id;->mw_swap_task_button:I

    if-ne v0, v1, :cond_2

    .line 300
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->swapTasksInSplitScreenMode(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Z)V

    .line 302
    sget-boolean p1, Lcom/android/wm/shell/CoreShellRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz p1, :cond_3

    const-string p1, "1033"

    .line 303
    invoke-static {p1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    goto :goto_1

    .line 305
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/wm/shell/R$id;->mw_addpair_button:I

    if-ne p1, v0, :cond_3

    .line 307
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mAppPairShortcutController:Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->createAppPairShortcut()V

    .line 310
    sget-boolean p1, Lcom/android/wm/shell/CoreShellRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz p1, :cond_3

    const-string p1, "1036"

    .line 311
    invoke-static {p1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 315
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mIsLongPressOrHover:Z

    .line 316
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->removeDividerPanel()V

    return-void
.end method

.method onDisplayConfigurationChanged()V
    .locals 2

    .line 187
    sget-boolean v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DividerPanel"

    const-string/jumbo v1, "onDisplayConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->removeDividerPanel()V

    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 263
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0x9

    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mIsLongPressOrHover:Z

    .line 270
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->scheduleRemoveDividerPanel()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 265
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mIsLongPressOrHover:Z

    :goto_0
    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    .line 340
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mIsLongPressOrHover:Z

    const/4 p0, 0x0

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 278
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mIsLongPressOrHover:Z

    .line 282
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->scheduleRemoveDividerPanel()V

    :goto_0
    return v0
.end method

.method removeDividerPanel()V
    .locals 3

    .line 162
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mIsLongPressOrHover:Z

    if-eqz v0, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanelWindowManager;->remove()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerPanelView;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mContext:Landroid/content/Context;

    .line 169
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$string;->accessibility_divider_closed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mCallbacks:Lcom/android/wm/shell/legacysplitscreen/DividerPanel$DividerPanelCallbacks;

    if-eqz v0, :cond_2

    .line 172
    invoke-interface {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel$DividerPanelCallbacks;->onRemoveDividerPanel()V

    :cond_2
    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->mCallbacks:Lcom/android/wm/shell/legacysplitscreen/DividerPanel$DividerPanelCallbacks;

    return-void
.end method

.method updateDividerPanel()V
    .locals 0

    .line 105
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->removeDividerPanel()V

    .line 106
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->addDividerPanel()V

    return-void
.end method
