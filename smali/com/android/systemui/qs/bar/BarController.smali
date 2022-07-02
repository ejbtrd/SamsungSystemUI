.class public Lcom/android/systemui/qs/bar/BarController;
.super Ljava/lang/Object;
.source "BarController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/util/PanelScreenShotLogger$LogProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/bar/BarController$OnApplyWindowInsetsListener;,
        Lcom/android/systemui/qs/bar/BarController$BarItemCallback;
    }
.end annotation


# instance fields
.field private mAllBarItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/bar/BarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBarFactory:Lcom/android/systemui/qs/bar/BarFactory;

.field private mCallback:Lcom/android/systemui/qs/bar/BarController$BarItemCallback;

.field private mCollapsedBarItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/bar/BarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDisplayCutoutTopInset:I

.field private mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field private mExpandedBarItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/bar/BarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private mNavBarHeight:I

.field private final mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private mQsDisabled:Z

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mStatusBarLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeSeq:I

.field private mUiMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/qs/bar/BarFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/qs/bar/BarFactory;",
            ")V"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mCollapsedBarItems:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mExpandedBarItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/BarController;->mQsDisabled:Z

    .line 74
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/BarController;->mKeyguardShowing:Z

    .line 84
    iput v0, p0, Lcom/android/systemui/qs/bar/BarController;->mDisplayCutoutTopInset:I

    .line 85
    iput v0, p0, Lcom/android/systemui/qs/bar/BarController;->mNavBarHeight:I

    .line 92
    new-instance v0, Lcom/android/systemui/qs/bar/BarController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/BarController$1;-><init>(Lcom/android/systemui/qs/bar/BarController;)V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    .line 139
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarController;->mContext:Landroid/content/Context;

    .line 140
    iput-object p2, p0, Lcom/android/systemui/qs/bar/BarController;->mStatusBarLazy:Ldagger/Lazy;

    .line 141
    iput-object p4, p0, Lcom/android/systemui/qs/bar/BarController;->mBarFactory:Lcom/android/systemui/qs/bar/BarFactory;

    .line 142
    iput-object p3, p0, Lcom/android/systemui/qs/bar/BarController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    const-string p1, "BarController"

    .line 143
    invoke-virtual {p3, p1}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    .line 144
    iget-object p2, p0, Lcom/android/systemui/qs/bar/BarController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/BarController;->makeAllBarItems()V

    .line 146
    sget-object p2, Lcom/android/systemui/util/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/util/PanelScreenShotLogger;

    new-instance p3, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/bar/BarController;)V

    invoke-virtual {p2, p1, p3}, Lcom/android/systemui/util/PanelScreenShotLogger;->addLogProvider(Ljava/lang/String;Lcom/android/systemui/util/PanelScreenShotLogger$LogProvider;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/bar/BarController;)Ljava/util/ArrayList;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/bar/BarController;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/systemui/qs/bar/BarController;->mUiMode:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/bar/BarController;)Lcom/android/systemui/qs/QSPanel;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/bar/BarController;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/systemui/qs/bar/BarController;->mUiMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/bar/BarController;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/bar/BarController;Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarController;->logForUiModeChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/bar/BarController;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/systemui/qs/bar/BarController;->mThemeSeq:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/bar/BarController;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/systemui/qs/bar/BarController;->mThemeSeq:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/bar/BarController;Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarController;->logForOpenTheme(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/bar/BarController;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/systemui/qs/bar/BarController;->mDisplayCutoutTopInset:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/systemui/qs/bar/BarController;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/systemui/qs/bar/BarController;->mDisplayCutoutTopInset:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/bar/BarController;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/systemui/qs/bar/BarController;->mNavBarHeight:I

    return p0
.end method

.method static synthetic access$702(Lcom/android/systemui/qs/bar/BarController;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/systemui/qs/bar/BarController;->mNavBarHeight:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/bar/BarController;)Lcom/android/systemui/qs/bar/BarController$BarItemCallback;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mCallback:Lcom/android/systemui/qs/bar/BarController$BarItemCallback;

    return-object p0
.end method

.method private loadBarSpecs(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 203
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, ","

    .line 205
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 206
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "MultiSIMPreferredSlot"

    .line 208
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_BARCONTROLLER_MULTISIM:Z

    if-nez v3, :cond_1

    goto :goto_1

    .line 211
    :cond_1
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private logForOpenTheme(Landroid/content/Context;)V
    .locals 3

    .line 421
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<QUICK_OPENTHEME is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getActiveThemePackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BarController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    sget p0, Lcom/android/systemui/R$color;->notification_header_bg_tw:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification_header_bg_tw = #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    sget p0, Lcom/android/systemui/R$color;->sec_panel_background_color:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sec_panel_background_color = #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    sget p0, Lcom/android/systemui/R$color;->animated_brightness_icon_color:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animated_brightness_icon_color = #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    sget p0, Lcom/android/systemui/R$color;->tw_progress_color_control_activated:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tw_progress_color_control_activated = #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    sget p0, Lcom/android/systemui/R$color;->tw_progress_color_control_normal:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tw_progress_color_control_normal = #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    sget p0, Lcom/android/systemui/R$color;->qs_tile_round_background_on:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qs_tile_round_background_on = #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    sget p0, Lcom/android/systemui/R$color;->qs_tile_icon_on_dim_tint_color:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qs_tile_icon_on_dim_tint_color = #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    sget p0, Lcom/android/systemui/R$color;->qs_tile_label:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    .line 437
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "qs_tile_label = #"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logForUiModeChanged(Landroid/content/Context;)V
    .locals 3

    const-string p0, "BarController"

    const-string v0, "<QUICK_UIMODE : "

    .line 441
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    sget v0, Lcom/android/systemui/R$color;->notification_header_bg_tw:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification_header_bg_tw = #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    sget v0, Lcom/android/systemui/R$color;->sec_panel_background_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sec_panel_background_color = #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    sget v0, Lcom/android/systemui/R$color;->animated_brightness_icon_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animated_brightness_icon_color = #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    sget v0, Lcom/android/systemui/R$color;->tw_progress_color_control_activated:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tw_progress_color_control_activated = #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    sget v0, Lcom/android/systemui/R$color;->tw_progress_color_control_normal:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tw_progress_color_control_normal = #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    sget v0, Lcom/android/systemui/R$color;->qs_tile_round_background_on:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qs_tile_round_background_on = #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    sget v0, Lcom/android/systemui/R$color;->qs_tile_icon_on_dim_tint_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qs_tile_icon_on_dim_tint_color = #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    sget v0, Lcom/android/systemui/R$color;->qs_tile_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "qs_tile_label = #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private makeAllBarItems()V
    .locals 8

    .line 150
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 151
    sget v1, Lcom/android/systemui/R$string;->quick_collapsed_bar_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 152
    sget v2, Lcom/android/systemui/R$string;->quick_expanded_bar_list:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bar specs newValue :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BarController"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 157
    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarController;->mCollapsedBarItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 158
    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarController;->mExpandedBarItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 160
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/bar/BarController;->loadBarSpecs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bar specs :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v5, "bar != null"

    const-string v6, "barSpec = "

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 164
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v6, p0, Lcom/android/systemui/qs/bar/BarController;->mBarFactory:Lcom/android/systemui/qs/bar/BarFactory;

    invoke-virtual {v6, v2}, Lcom/android/systemui/qs/bar/BarFactory;->createBarItem(Ljava/lang/String;)Lcom/android/systemui/qs/bar/BarItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 167
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-interface {v2}, Lcom/android/systemui/qs/bar/BarItem;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 169
    iget-object v5, p0, Lcom/android/systemui/qs/bar/BarController;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {v2, v5}, Lcom/android/systemui/qs/bar/BarItem;->setStatusBar(Ldagger/Lazy;)V

    const/4 v5, 0x1

    .line 170
    invoke-interface {v2, v5}, Lcom/android/systemui/qs/bar/BarItem;->setOnCollapsedState(Z)V

    .line 171
    iget-object v5, p0, Lcom/android/systemui/qs/bar/BarController;->mCollapsedBarItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_1
    invoke-interface {v2}, Lcom/android/systemui/qs/bar/BarItem;->destroy()V

    goto :goto_0

    .line 179
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/bar/BarController;->loadBarSpecs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarController;->mBarFactory:Lcom/android/systemui/qs/bar/BarFactory;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/bar/BarFactory;->createBarItem(Ljava/lang/String;)Lcom/android/systemui/qs/bar/BarItem;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 186
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-interface {v1}, Lcom/android/systemui/qs/bar/BarItem;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 188
    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarController;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {v1, v2}, Lcom/android/systemui/qs/bar/BarItem;->setStatusBar(Ldagger/Lazy;)V

    const/4 v2, 0x0

    .line 189
    invoke-interface {v1, v2}, Lcom/android/systemui/qs/bar/BarItem;->setOnCollapsedState(Z)V

    .line 190
    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarController;->mExpandedBarItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 192
    :cond_4
    invoke-interface {v1}, Lcom/android/systemui/qs/bar/BarItem;->destroy()V

    goto :goto_1

    .line 198
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarController;->mCollapsedBarItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 199
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mExpandedBarItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 0

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 277
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/qs/bar/BarController;->mQsDisabled:Z

    if-ne p1, p2, :cond_1

    return-void

    .line 278
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "disable : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BarController"

    invoke-static {p3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarController;->mQsDisabled:Z

    .line 280
    iget-object p2, p0, Lcom/android/systemui/qs/bar/BarController;->mCallback:Lcom/android/systemui/qs/bar/BarController$BarItemCallback;

    invoke-interface {p2}, Lcom/android/systemui/qs/bar/BarController$BarItemCallback;->onBarHeightChanged()V

    .line 281
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/bar/BarItem;

    .line 282
    invoke-interface {p2, p1}, Lcom/android/systemui/qs/bar/BarItem;->disable(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "Dump Bar state =============================================== "

    .line 382
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/bar/BarItem;

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : isAvailable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-interface {v1}, Lcom/android/systemui/qs/bar/BarItem;->isAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isShowing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-interface {v1}, Lcom/android/systemui/qs/bar/BarItem;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/systemui/qs/bar/BarItem;->getBarView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v1, ", bar.getBarView() = null"

    goto :goto_1

    .line 388
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", alpha = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/systemui/qs/bar/BarItem;->getBarView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", translationY = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-interface {v1}, Lcom/android/systemui/qs/bar/BarItem;->getBarView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", visibility = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-interface {v1}, Lcom/android/systemui/qs/bar/BarItem;->getBarView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 391
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "============================================================== "

    .line 393
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarItem;

    .line 396
    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/qs/bar/BarItem;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public gatherState()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Bar state ==================== "

    .line 404
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/bar/BarItem;

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : isAvailable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-interface {v1}, Lcom/android/systemui/qs/bar/BarItem;->isAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isShowing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-interface {v1}, Lcom/android/systemui/qs/bar/BarItem;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/systemui/qs/bar/BarItem;->getBarView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v1, ", bar.getBarView() = null"

    goto :goto_1

    .line 410
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", alpha = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/systemui/qs/bar/BarItem;->getBarView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", translationY = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-interface {v1}, Lcom/android/systemui/qs/bar/BarItem;->getBarView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", visibility = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-interface {v1}, Lcom/android/systemui/qs/bar/BarItem;->getBarView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 413
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    const-string p0, "============================== "

    .line 415
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getCollapsedBarItems()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/bar/BarItem;",
            ">;"
        }
    .end annotation

    .line 309
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mCollapsedBarItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getCollapsedBarItemsHeight()I
    .locals 4

    .line 372
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mCollapsedBarItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/bar/BarItem;

    .line 373
    invoke-interface {v2}, Lcom/android/systemui/qs/bar/BarItem;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    invoke-interface {v2}, Lcom/android/systemui/qs/bar/BarItem;->getBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 377
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getCollapsedBrightnessBar()Lcom/android/systemui/qs/bar/BrightnessBar;
    .locals 2

    .line 317
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mCollapsedBarItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarItem;

    .line 318
    instance-of v1, v0, Lcom/android/systemui/qs/bar/BrightnessBar;

    if-eqz v1, :cond_0

    .line 319
    check-cast v0, Lcom/android/systemui/qs/bar/BrightnessBar;

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCollapsedMediaDeviceBar()Lcom/android/systemui/qs/bar/MediaDevicesBar;
    .locals 2

    .line 335
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mCollapsedBarItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarItem;

    .line 336
    instance-of v1, v0, Lcom/android/systemui/qs/bar/MediaDevicesBar;

    if-eqz v1, :cond_0

    .line 337
    check-cast v0, Lcom/android/systemui/qs/bar/MediaDevicesBar;

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExpandedBarItems()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/bar/BarItem;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mExpandedBarItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getExpandedBrightnessBar()Lcom/android/systemui/qs/bar/BrightnessBar;
    .locals 2

    .line 326
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mExpandedBarItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarItem;

    .line 327
    instance-of v1, v0, Lcom/android/systemui/qs/bar/BrightnessBar;

    if-eqz v1, :cond_0

    .line 328
    check-cast v0, Lcom/android/systemui/qs/bar/BrightnessBar;

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExpandedMediaDeviceBar()Lcom/android/systemui/qs/bar/MediaDevicesBar;
    .locals 2

    .line 344
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mExpandedBarItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarItem;

    .line 345
    instance-of v1, v0, Lcom/android/systemui/qs/bar/MediaDevicesBar;

    if-eqz v1, :cond_0

    .line 346
    check-cast v0, Lcom/android/systemui/qs/bar/MediaDevicesBar;

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMediaPlayer()Lcom/android/systemui/qs/bar/QSMediaPlayerBar;
    .locals 2

    .line 362
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mCollapsedBarItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarItem;

    .line 363
    instance-of v1, v0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    if-eqz v1, :cond_0

    .line 364
    check-cast v0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMultiSIMBar()Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;
    .locals 2

    .line 353
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mExpandedBarItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarItem;

    .line 354
    instance-of v1, v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    if-eqz v1, :cond_0

    .line 355
    check-cast v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public refreshBarKnox()V
    .locals 2

    const-string v0, "BarController"

    const-string/jumbo v1, "refreshBarKnox call "

    .line 461
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarItem;

    .line 463
    invoke-interface {v0}, Lcom/android/systemui/qs/bar/BarItem;->onKnoxPolicychanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mCallback:Lcom/android/systemui/qs/bar/BarController$BarItemCallback;

    .line 270
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarItem;

    .line 271
    invoke-interface {v0}, Lcom/android/systemui/qs/bar/BarItem;->destroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/bar/BarController$BarItemCallback;)V
    .locals 2

    .line 244
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarController;->mCallback:Lcom/android/systemui/qs/bar/BarController$BarItemCallback;

    .line 246
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarItem;

    .line 247
    new-instance v1, Lcom/android/systemui/qs/bar/BarController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/bar/BarController$2;-><init>(Lcom/android/systemui/qs/bar/BarController;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/bar/BarItem;->setCallback(Lcom/android/systemui/qs/bar/BarItem$Callback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 287
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarItem;

    .line 288
    invoke-interface {v0, p1}, Lcom/android/systemui/qs/bar/BarItem;->setExpanded(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setExpandedPosition(F)V
    .locals 1

    .line 217
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarItem;

    .line 218
    invoke-interface {v0, p1}, Lcom/android/systemui/qs/bar/BarItem;->setPosition(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0

    .line 299
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarController;->mKeyguardShowing:Z

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    .line 303
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarItem;

    .line 304
    invoke-interface {v0, p1}, Lcom/android/systemui/qs/bar/BarItem;->setListening(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setQS(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 230
    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 231
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz p1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarController;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/QSPanel;->removeOnConfigurationChangedListener(Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;)V

    .line 234
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-void

    .line 237
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 238
    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$id;->quick_settings_panel:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/QSPanel;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 239
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarController;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/QSPanel;->addOnConfigurationChangedListener(Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;)V

    .line 240
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    new-instance v1, Lcom/android/systemui/qs/bar/BarController$OnApplyWindowInsetsListener;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/qs/bar/BarController$OnApplyWindowInsetsListener;-><init>(Lcom/android/systemui/qs/bar/BarController;Lcom/android/systemui/qs/bar/BarController$1;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public setQsExpansionHeight(I)V
    .locals 1

    .line 223
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarItem;

    .line 224
    invoke-interface {v0, p1}, Lcom/android/systemui/qs/bar/BarItem;->setQsExpansionHeight(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setQsFullyExpanded(Z)V
    .locals 1

    .line 293
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarItem;

    .line 294
    invoke-interface {v0, p1}, Lcom/android/systemui/qs/bar/BarItem;->setQsFullyExpanded(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
