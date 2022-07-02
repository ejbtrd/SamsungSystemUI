.class public Lcom/android/systemui/qs/tiles/ScreenCaptureTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "ScreenCaptureTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field private mNeedDoScreenCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    .line 105
    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mNeedDoScreenCapture:Z

    .line 74
    new-instance p1, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;-><init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    iput-object p9, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 108
    new-instance p1, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 109
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.samsung.systemui.statusbar.COLLAPSED"

    .line 110
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.samsung.systemui.statusbar.EXPANDED"

    .line 111
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p9, p0, p1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mNeedDoScreenCapture:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mNeedDoScreenCapture:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->doScreenCapture()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Landroid/content/Context;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Landroid/content/Context;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Landroid/content/Context;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Z
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->isSmartCaptureSupported()Z

    move-result p0

    return p0
.end method

.method private doScreenCapture()V
    .locals 3

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.capture.QuickPanelCapture"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    new-instance v1, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;

    const-string v2, "doScreenCapture"

    invoke-direct {v1, p0, v2, v0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;-><init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Ljava/lang/String;Landroid/content/Intent;)V

    .line 194
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private isPackageInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 0

    const/4 p0, 0x1

    .line 204
    :try_start_0
    invoke-virtual {p2, p1, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSmartCaptureSupported()Z
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.app.scrollcapture"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->isPackageInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 218
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.app.smartcapture"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->isPackageInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

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


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_screen_capture_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x70

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 166
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_screen_capture_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick(Landroid/view/View;)V
    .locals 2

    .line 133
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleClick : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 134
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mNeedDoScreenCapture:Z

    .line 136
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    return-void
.end method

.method protected handleDestroy()V
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected handleSecondaryClick(Landroid/view/View;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->isSmartCaptureSupported()Z

    .line 142
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSecondaryClick(Landroid/view/View;)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 1

    const/4 p2, 0x1

    .line 156
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 157
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 159
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_screen_capture_label:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 160
    sget p2, Lcom/android/systemui/R$drawable;->quick_panel_icon_smart_capture:I

    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 161
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 66
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 123
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
