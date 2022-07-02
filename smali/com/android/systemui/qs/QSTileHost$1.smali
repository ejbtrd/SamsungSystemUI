.class Lcom/android/systemui/qs/QSTileHost$1;
.super Ljava/lang/Object;
.source "QSTileHost.java"

# interfaces
.implements Lcom/android/systemui/qp/QSBackupRestoreManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/plugins/qs/QSFactory;Landroid/os/Handler;Landroid/os/Looper;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/tuner/TunerService;Ljavax/inject/Provider;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/Optional;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/qs/external/CustomTileStatePersister;Lcom/android/systemui/BootCompleteCache;Lcom/android/systemui/BootAnimationFinishedCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSTileHost;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost$1;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValidDB()Z
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost$1;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->isValidData()Z

    move-result p0

    return p0
.end method

.method public onBackup(Z)Ljava/lang/String;
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost$1;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->getBackupData(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onRestore(Ljava/lang/String;)V
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost$1;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->setRestoreData(Ljava/lang/String;)V

    return-void
.end method
