.class public Lcom/android/systemui/qs/SecQSLayoutDetail;
.super Ljava/lang/Object;
.source "SecQSLayoutDetail.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Lcom/android/systemui/qs/QSPanelController$ViewCallBack;


# instance fields
.field private mAlwaysMenuLayout:Landroid/widget/LinearLayout;

.field private mAlwaysSelected:Landroid/widget/ImageView;

.field private mBrightnessOnTopContainer:Landroid/widget/LinearLayout;

.field private mBrightnessOnTopEditor:Landroid/content/SharedPreferences$Editor;

.field private mBrightnessOnTopPref:Landroid/content/SharedPreferences;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

.field private mDismissReceiver:Landroid/content/BroadcastReceiver;

.field private mExpandedSelected:Landroid/widget/ImageView;

.field private mIsMenuShown:Z

.field private mMediaAndDevicesEditor:Landroid/content/SharedPreferences$Editor;

.field private mMediaAndDevicesPref:Landroid/content/SharedPreferences;

.field private mMediaDevicesContainer:Landroid/widget/LinearLayout;

.field private mMultiSIMInfoEditor:Landroid/content/SharedPreferences$Editor;

.field private mMultiSIMInfoPref:Landroid/content/SharedPreferences;

.field private mMultiSimInfoContainer:Landroid/widget/LinearLayout;

.field private mNeverMenuLayout:Landroid/widget/LinearLayout;

.field private mNeverSelected:Landroid/widget/ImageView;

.field private mPopupMenuTextAlways:Landroid/widget/TextView;

.field private mPopupMenuTextExpanded:Landroid/widget/TextView;

.field private mPopupMenuTextNever:Landroid/widget/TextView;

.field private mPopupSelectedTextColor:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field private final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field private mWhenExpandedMenuLayout:Landroid/widget/LinearLayout;

.field popupContentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mIsMenuShown:Z

    .line 164
    new-instance v0, Lcom/android/systemui/qs/SecQSLayoutDetail$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/SecQSLayoutDetail$1;-><init>(Lcom/android/systemui/qs/SecQSLayoutDetail;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 174
    new-instance v1, Lcom/android/systemui/qs/SecQSLayoutDetail$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/SecQSLayoutDetail$2;-><init>(Lcom/android/systemui/qs/SecQSLayoutDetail;)V

    iput-object v1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mDismissReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    .line 80
    const-class v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object v1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 81
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 83
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mDismissReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 85
    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/settings/multisim/MultiSIMController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/SecQSLayoutDetail;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mIsMenuShown:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/SecQSLayoutDetail;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mIsMenuShown:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/SecQSLayoutDetail;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQSLayoutDetail;->dismissListPopupWindow()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/SecQSLayoutDetail;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecQSLayoutDetail;->updateMediaDevicesOnTop(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/SecQSLayoutDetail;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecQSLayoutDetail;->updateMultiSIMInfo(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/SecQSLayoutDetail;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mDismissReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/SecQSLayoutDetail;)Landroid/widget/LinearLayout;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mBrightnessOnTopContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/SecQSLayoutDetail;ILandroid/view/View;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/SecQSLayoutDetail;->showListPopupWindow(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/SecQSLayoutDetail;)Landroid/widget/LinearLayout;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMediaDevicesContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/SecQSLayoutDetail;)Landroid/widget/LinearLayout;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMultiSimInfoContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/SecQSLayoutDetail;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/SecQSLayoutDetail;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecQSLayoutDetail;->updateBrightnessOnTop(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/SecQSLayoutDetail;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecQSLayoutDetail;->updateMediaDevices(Z)V

    return-void
.end method

.method private addDividerView(Landroid/view/ViewGroup;)V
    .locals 4

    .line 516
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qspanel_layout_detail_divider_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 517
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qspanel_layout_detail_divider_side_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 518
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 519
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 520
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 521
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 522
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->qspanel_layout_detail_divider_background_color:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 524
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private calculatePopupWindowPos(Landroid/view/View;Landroid/view/View;)[I
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    .line 437
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 438
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 439
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    const/4 v3, 0x0

    .line 441
    invoke-virtual {p2, v3, v3}, Landroid/view/View;->measure(II)V

    .line 442
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 443
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 445
    iget-object v5, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 446
    iget-object v6, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 448
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v7, Lcom/android/systemui/R$dimen;->qs_detail_layout_popup_menu_top_margin:I

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v7, 0x1

    .line 450
    aget v8, v0, v7

    sub-int/2addr v5, v8

    sub-int/2addr v5, p0

    if-ge v5, v4, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v3

    .line 451
    :goto_0
    aget v8, v0, v3

    sub-int/2addr v6, v8

    if-ge v6, p2, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    if-eqz v5, :cond_3

    if-eqz v6, :cond_2

    .line 453
    aget p0, v0, v3

    add-int/2addr p0, p1

    sub-int/2addr p0, p2

    goto :goto_2

    :cond_2
    aget p0, v0, v3

    :goto_2
    aput p0, v1, v3

    .line 454
    aget p0, v0, v7

    add-int/2addr p0, v2

    sub-int/2addr p0, v4

    aput p0, v1, v7

    goto :goto_4

    :cond_3
    if-eqz v6, :cond_4

    .line 456
    aget v2, v0, v3

    add-int/2addr v2, p1

    sub-int/2addr v2, p2

    goto :goto_3

    :cond_4
    aget v2, v0, v3

    :goto_3
    aput v2, v1, v3

    .line 457
    aget p1, v0, v7

    sub-int/2addr p1, p0

    aput p1, v1, v7

    :goto_4
    return-object v1
.end method

.method private createListPopupWindow()V
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$layout;->qs_panel_layout_detail_popup_menu:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->popupContentView:Landroid/view/View;

    .line 235
    sget v1, Lcom/android/systemui/R$id;->always_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mAlwaysMenuLayout:Landroid/widget/LinearLayout;

    .line 236
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->popupContentView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->expanded_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mWhenExpandedMenuLayout:Landroid/widget/LinearLayout;

    .line 237
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->popupContentView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->never_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mNeverMenuLayout:Landroid/widget/LinearLayout;

    .line 239
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->popupContentView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->always:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupMenuTextAlways:Landroid/widget/TextView;

    .line 240
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->popupContentView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->when_expanded:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupMenuTextExpanded:Landroid/widget/TextView;

    .line 241
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->popupContentView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->dont_show:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupMenuTextNever:Landroid/widget/TextView;

    .line 243
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->popupContentView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->always_checked:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mAlwaysSelected:Landroid/widget/ImageView;

    .line 244
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->popupContentView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->expanded_checked:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mExpandedSelected:Landroid/widget/ImageView;

    .line 245
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->popupContentView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->never_checked:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mNeverSelected:Landroid/widget/ImageView;

    .line 247
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->popupContentView:Landroid/view/View;

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 248
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 249
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/android/systemui/R$drawable;->qs_panel_multi_sim_popup_menu_bg:I

    goto :goto_0

    .line 250
    :cond_0
    sget v2, Lcom/android/systemui/R$drawable;->qs_panel_layout_detail_popup_menu_bg:I

    .line 248
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_layout_detail_popup_menu_elevation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 254
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method private dismissListPopupWindow()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private initpopup()V
    .locals 3

    .line 228
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQSLayoutDetail;->createListPopupWindow()V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->qs_detail_layout_popup_text_color_select:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupSelectedTextColor:I

    return-void
.end method

.method private isMultiSIMMenuAvailable()Z
    .locals 2

    .line 510
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BARCONTROLLER_MULTISIM:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_MULTI_SIM:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 511
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isMultiSimReady()Z

    move-result p0

    if-eqz p0, :cond_0

    const-class p0, Lcom/android/systemui/tuner/TunerService;

    .line 512
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tuner/TunerService;

    const-string v0, "multi_sim_bar_hide_by_knox_restrictions"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private setBlurEffectForPopupWindow([I)V
    .locals 4

    .line 528
    new-instance v0, Lcom/android/systemui/util/BlurEffectUtils;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/util/BlurEffectUtils;-><init>(Landroid/content/Context;)V

    .line 529
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_STYLE_PANEL_BLUR:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->popupContentView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 530
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 531
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$dimen;->qs_layout_detail_popup_menu_bg_radius:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    .line 532
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->qs_detail_layout_popup_menu_background_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 533
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->popupContentView:Landroid/view/View;

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/systemui/util/BlurEffectUtils;->setRealTimeBlurEffect(Landroid/view/View;FI)V

    goto :goto_0

    .line 535
    :cond_0
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_STYLE_PANEL_BLUR_FOR_MASSIVE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->popupContentView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 536
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->qs_panel_layout_detail_popup_menu_bg_not_blur:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 537
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->popupContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 538
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->popupContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 539
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->popupContentView:Landroid/view/View;

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/android/systemui/util/BlurEffectUtils;->setCaptureBlur(Landroid/view/View;[III)V

    goto :goto_0

    .line 540
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->popupContentView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 541
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$drawable;->qs_panel_layout_detail_popup_menu_bg_non_transparent:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setClickListeners()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mBrightnessOnTopContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/qs/SecQSLayoutDetail$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/SecQSLayoutDetail$3;-><init>(Lcom/android/systemui/qs/SecQSLayoutDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMediaDevicesContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/qs/SecQSLayoutDetail$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/SecQSLayoutDetail$4;-><init>(Lcom/android/systemui/qs/SecQSLayoutDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQSLayoutDetail;->isMultiSIMMenuAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMultiSimInfoContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/qs/SecQSLayoutDetail$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/SecQSLayoutDetail$5;-><init>(Lcom/android/systemui/qs/SecQSLayoutDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private showListPopupWindow(ILandroid/view/View;)V
    .locals 7

    .line 289
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_d

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQSLayoutDetail;->createListPopupWindow()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 292
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 293
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/android/systemui/qs/SecQSLayoutDetail;->calculatePopupWindowPos(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v2

    .line 294
    iget-object v3, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->sec_qs_layout_detail_margin_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 295
    iget-object v4, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupWindow:Landroid/widget/PopupWindow;

    const v5, 0x800033

    aget v6, v2, v1

    add-int/2addr v6, v3

    aget v3, v2, v0

    invoke-virtual {v4, p2, v5, v6, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 296
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/SecQSLayoutDetail;->setBlurEffectForPopupWindow([I)V

    :cond_1
    const-string/jumbo p2, "sec-medium"

    .line 299
    invoke-static {p2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    const/16 v2, 0x8

    if-eq p1, v0, :cond_b

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const-string p1, "SecQSLayoutDetail"

    const-string p2, "MESSAGE_EMPTY"

    .line 425
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 392
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mWhenExpandedMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 393
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 394
    iget-object v3, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mWhenExpandedMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mAlwaysMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 396
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSLayoutDetail;->getMultiSimSelectedValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 398
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupMenuTextExpanded:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupSelectedTextColor:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 399
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupMenuTextExpanded:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 400
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mExpandedSelected:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 402
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupMenuTextNever:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupSelectedTextColor:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 403
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupMenuTextNever:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 404
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mNeverSelected:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mWhenExpandedMenuLayout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->qs_panel_layout_detail_popup_menu_option_background_top:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 407
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mNeverMenuLayout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->qs_panel_layout_detail_popup_menu_option_background_bottom:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 408
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mWhenExpandedMenuLayout:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/android/systemui/qs/SecQSLayoutDetail$11;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/SecQSLayoutDetail$11;-><init>(Lcom/android/systemui/qs/SecQSLayoutDetail;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mNeverMenuLayout:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/android/systemui/qs/SecQSLayoutDetail$12;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/SecQSLayoutDetail$12;-><init>(Lcom/android/systemui/qs/SecQSLayoutDetail;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 335
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSLayoutDetail;->getMediaDevicesSelectedValue()I

    move-result p1

    .line 336
    iget-object v4, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v3, :cond_5

    move v3, v0

    goto :goto_1

    :cond_5
    move v3, v1

    .line 338
    :goto_1
    sget-boolean v4, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz v4, :cond_7

    if-eqz v3, :cond_6

    .line 339
    iget-object v3, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$bool;->hide_media_device_bar_on_landscape:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v0

    goto :goto_2

    :cond_6
    move v3, v1

    :cond_7
    :goto_2
    if-eqz v3, :cond_8

    .line 342
    iget-object v3, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mWhenExpandedMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 343
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 344
    iget-object v4, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mWhenExpandedMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    iget-object v3, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mAlwaysMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 346
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mWhenExpandedMenuLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$drawable;->qs_panel_layout_detail_popup_menu_option_background_top:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    if-nez p1, :cond_9

    .line 349
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupMenuTextNever:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupSelectedTextColor:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 350
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupMenuTextNever:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 351
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mNeverSelected:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_9
    if-ne p1, v0, :cond_a

    .line 353
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupMenuTextExpanded:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupSelectedTextColor:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupMenuTextExpanded:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 355
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mExpandedSelected:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 357
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupMenuTextAlways:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupSelectedTextColor:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 358
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupMenuTextAlways:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 359
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mAlwaysSelected:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mAlwaysMenuLayout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->qs_panel_layout_detail_popup_menu_option_background_top:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 362
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mNeverMenuLayout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->qs_panel_layout_detail_popup_menu_option_background_bottom:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 363
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mAlwaysMenuLayout:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/android/systemui/qs/SecQSLayoutDetail$8;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/SecQSLayoutDetail$8;-><init>(Lcom/android/systemui/qs/SecQSLayoutDetail;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mWhenExpandedMenuLayout:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/android/systemui/qs/SecQSLayoutDetail$9;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/SecQSLayoutDetail$9;-><init>(Lcom/android/systemui/qs/SecQSLayoutDetail;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mNeverMenuLayout:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/android/systemui/qs/SecQSLayoutDetail$10;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/SecQSLayoutDetail$10;-><init>(Lcom/android/systemui/qs/SecQSLayoutDetail;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 303
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mNeverMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 304
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSLayoutDetail;->getBrightnessSelectedValue()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 306
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupMenuTextAlways:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupSelectedTextColor:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 307
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupMenuTextAlways:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 308
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mAlwaysSelected:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 310
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupMenuTextExpanded:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupSelectedTextColor:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 311
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mPopupMenuTextExpanded:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 312
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mExpandedSelected:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mAlwaysMenuLayout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->qs_panel_layout_detail_popup_menu_option_background_top:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 315
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mWhenExpandedMenuLayout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->qs_panel_layout_detail_popup_menu_option_background_bottom:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 316
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mAlwaysMenuLayout:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/android/systemui/qs/SecQSLayoutDetail$6;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/SecQSLayoutDetail$6;-><init>(Lcom/android/systemui/qs/SecQSLayoutDetail;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mWhenExpandedMenuLayout:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/android/systemui/qs/SecQSLayoutDetail$7;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/SecQSLayoutDetail$7;-><init>(Lcom/android/systemui/qs/SecQSLayoutDetail;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    :goto_5
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mIsMenuShown:Z

    :cond_d
    return-void
.end method

.method private updateBrightnessOnTop(Z)V
    .locals 2

    .line 463
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "brightness_on_top"

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    .line 465
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mBrightnessOnTopPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 466
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mBrightnessOnTopEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v1, "QPPS1023"

    .line 467
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 469
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mBrightnessOnTopEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method private updateMediaDevices(Z)V
    .locals 3

    .line 475
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const-string v2, "qspanel_media_quickcontrol_bar_available"

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    .line 476
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, -0x1

    const-string v2, "qspanel_media_quickcontrol_bar_available_on_top"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    .line 478
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMediaAndDevicesPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 479
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMediaAndDevicesEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v1, "QPPS1024"

    .line 480
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 482
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMediaAndDevicesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method private updateMediaDevicesOnTop(Z)V
    .locals 2

    .line 488
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "qspanel_media_quickcontrol_bar_available_on_top"

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    .line 490
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMediaAndDevicesPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 491
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMediaAndDevicesEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v1, "QPPS1026"

    .line 492
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 493
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMediaAndDevicesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method private updateMultiSIMInfo(Z)V
    .locals 2

    .line 499
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "multi_sim_bar_show_on_qspanel"

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    .line 501
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMultiSIMInfoPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 502
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMultiSIMInfoEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v1, "QPPS1025"

    .line 503
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 504
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMultiSIMInfoEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 106
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$layout;->sec_qspanel_layout_detail:I

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 110
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/android/systemui/R$layout;->sec_qs_detail_item:I

    .line 111
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 112
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    iput-object p2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mBrightnessOnTopContainer:Landroid/widget/LinearLayout;

    .line 114
    sget v3, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->sec_brightness_control:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mBrightnessOnTopContainer:Landroid/widget/LinearLayout;

    sget v4, Lcom/android/systemui/R$id;->menu_option:I

    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSLayoutDetail;->getBrightnessSelectedValue()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->qs_panel_detail_popup_menu_always_text:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 117
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->qs_panel_detail_popup_menu_when_expanded_text:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 115
    :goto_0
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const-class p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 120
    iget-object v5, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mBrightnessOnTopContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 124
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/SecQSLayoutDetail;->addDividerView(Landroid/view/ViewGroup;)V

    .line 125
    iget-object v5, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    .line 126
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 127
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 128
    iput-object v5, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMediaDevicesContainer:Landroid/widget/LinearLayout;

    .line 129
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->sec_devices_and_media_control:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSLayoutDetail;->getMediaDevicesSelectedValue()I

    move-result v5

    if-nez v5, :cond_2

    .line 131
    iget-object v5, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->qs_panel_detail_popup_menu_dont_show_text:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 132
    iget-object v5, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->qs_panel_detail_popup_menu_when_expanded_text:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 133
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->qs_panel_detail_popup_menu_always_text:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 134
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMediaDevicesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_4

    .line 136
    iget-object v5, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMediaDevicesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 140
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQSLayoutDetail;->isMultiSIMMenuAvailable()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 141
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/SecQSLayoutDetail;->addDividerView(Landroid/view/ViewGroup;)V

    .line 142
    iget-object v5, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    .line 143
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    .line 144
    invoke-virtual {v2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 145
    iput-object p3, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMultiSimInfoContainer:Landroid/widget/LinearLayout;

    .line 146
    invoke-virtual {p3, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->sec_multi_sim_info_control:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object p3, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMultiSimInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSLayoutDetail;->getMultiSimSelectedValue()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->qs_panel_detail_popup_menu_when_expanded_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 148
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->qs_panel_detail_popup_menu_dont_show_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    :goto_2
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_6

    .line 150
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mMultiSimInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 154
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQSLayoutDetail;->initpopup()V

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQSLayoutDetail;->setClickListeners()V

    const-string p0, "QPP103"

    .line 158
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    return-object p1
.end method

.method getBrightnessSelectedValue()Z
    .locals 2

    .line 203
    const-class p0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tuner/TunerService;

    const-string v0, "brightness_on_top"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method getMediaDevicesSelectedValue()I
    .locals 6

    .line 208
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const-string v2, "qspanel_media_quickcontrol_bar_available"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    .line 209
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v3, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-eqz v5, :cond_2

    .line 210
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v5, Lcom/android/systemui/R$bool;->hide_media_device_bar_on_landscape:I

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v4

    goto :goto_2

    :cond_2
    move p0, v2

    :goto_2
    if-ne v1, v4, :cond_6

    .line 212
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, -0x1

    const-string v5, "qspanel_media_quickcontrol_bar_available_on_top"

    invoke-virtual {v0, v5, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v2, v4

    :cond_3
    if-ne v2, v4, :cond_5

    if-eqz p0, :cond_4

    move v3, v4

    :cond_4
    return v3

    :cond_5
    return v4

    :cond_6
    return v2
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x138a

    return p0
.end method

.method getMultiSimSelectedValue()Z
    .locals 2

    .line 223
    const-class p0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tuner/TunerService;

    const-string v0, "multi_sim_bar_show_on_qspanel"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 90
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->sec_qspanel_layout_detail_title:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onConfigChange(Landroid/content/res/Configuration;)V
    .locals 1

    const-string p1, "SecQSLayoutDetail"

    const-string v0, "onConfigChange:"

    .line 547
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQSLayoutDetail;->dismissListPopupWindow()V

    return-void
.end method

.method public onViewDetached()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 96
    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail;->mDismissReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public setToggleState(Z)V
    .locals 0

    return-void
.end method
