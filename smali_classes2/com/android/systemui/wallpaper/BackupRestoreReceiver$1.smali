.class Lcom/android/systemui/wallpaper/BackupRestoreReceiver$1;
.super Landroid/os/Handler;
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

    .line 61
    iput-object p1, p0, Lcom/android/systemui/wallpaper/BackupRestoreReceiver$1;->this$0:Lcom/android/systemui/wallpaper/BackupRestoreReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 64
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 65
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "SAVE_PATH"

    .line 66
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "SOURCE"

    .line 67
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "SESSION_KEY"

    .line 68
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "EXPORT_SESSION_TIME"

    .line 69
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "SECURITY_LEVEL"

    .line 70
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v1, "WHICH"

    .line 71
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 73
    iget p0, p1, Landroid/os/Message;->what:I

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v6

    .line 79
    invoke-static/range {v0 .. v5}, Landroid/app/WallpaperManager;->startRestoreWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-static/range {v0 .. v6}, Landroid/app/WallpaperManager;->startBackupWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
