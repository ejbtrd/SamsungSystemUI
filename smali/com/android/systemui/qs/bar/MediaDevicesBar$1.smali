.class Lcom/android/systemui/qs/bar/MediaDevicesBar$1;
.super Ljava/lang/Object;
.source "MediaDevicesBar.java"

# interfaces
.implements Lcom/android/systemui/qp/QSBackupRestoreManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/bar/MediaDevicesBar;-><init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/controls/controller/CustomDeviceControlsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$1;->this$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValidDB()Z
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$1;->this$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->isValidData()Z

    move-result p0

    return p0
.end method

.method public onBackup(Z)Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$1;->this$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->getBackupData(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onRestore(Ljava/lang/String;)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$1;->this$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->setRestoreData(Ljava/lang/String;)V

    return-void
.end method
