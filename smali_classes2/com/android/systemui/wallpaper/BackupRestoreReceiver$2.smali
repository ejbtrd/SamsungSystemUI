.class Lcom/android/systemui/wallpaper/BackupRestoreReceiver$2;
.super Landroid/content/BroadcastReceiver;
.source "BackupRestoreReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/BackupRestoreReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/BackupRestoreReceiver;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/BackupRestoreReceiver;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/systemui/wallpaper/BackupRestoreReceiver$2;->this$0:Lcom/android/systemui/wallpaper/BackupRestoreReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive ( action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WallpaperBackupRestoreReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.sec.android.intent.action.REQUEST_BACKUP_LOCKSCREEN"

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.sec.android.intent.action.REQUEST_BACKUP_WALLPAPER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/BackupRestoreReceiver$2;->this$0:Lcom/android/systemui/wallpaper/BackupRestoreReceiver;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/BackupRestoreReceiver;->access$000(Lcom/android/systemui/wallpaper/BackupRestoreReceiver;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    goto :goto_1

    .line 93
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/BackupRestoreReceiver$2;->this$0:Lcom/android/systemui/wallpaper/BackupRestoreReceiver;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/BackupRestoreReceiver;->access$000(Lcom/android/systemui/wallpaper/BackupRestoreReceiver;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 98
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/BackupRestoreReceiver$2;->this$0:Lcom/android/systemui/wallpaper/BackupRestoreReceiver;

    invoke-static {v0, p2}, Lcom/android/systemui/wallpaper/BackupRestoreReceiver;->access$100(Lcom/android/systemui/wallpaper/BackupRestoreReceiver;Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 99
    iget-object p0, p0, Lcom/android/systemui/wallpaper/BackupRestoreReceiver$2;->this$0:Lcom/android/systemui/wallpaper/BackupRestoreReceiver;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/BackupRestoreReceiver;->access$000(Lcom/android/systemui/wallpaper/BackupRestoreReceiver;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
