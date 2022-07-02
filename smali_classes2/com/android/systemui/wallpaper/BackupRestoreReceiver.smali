.class public Lcom/android/systemui/wallpaper/BackupRestoreReceiver;
.super Ljava/lang/Object;
.source "BackupRestoreReceiver.java"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/android/systemui/wallpaper/BackupRestoreReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/BackupRestoreReceiver$1;-><init>(Lcom/android/systemui/wallpaper/BackupRestoreReceiver;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/BackupRestoreReceiver;->mHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Lcom/android/systemui/wallpaper/BackupRestoreReceiver$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/BackupRestoreReceiver$2;-><init>(Lcom/android/systemui/wallpaper/BackupRestoreReceiver;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/BackupRestoreReceiver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/BackupRestoreReceiver;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/wallpaper/BackupRestoreReceiver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/BackupRestoreReceiver;Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/BackupRestoreReceiver;->makeBundleData(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private getWhich(Ljava/lang/String;)I
    .locals 0

    const-string p0, "com.sec.android.intent.action.REQUEST_BACKUP_LOCKSCREEN"

    .line 104
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.sec.android.intent.action.REQUEST_RESTORE_LOCKSCREEN"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method private makeBundleData(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 4

    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SAVE_PATH"

    .line 113
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SOURCE"

    .line 114
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SESSION_KEY"

    .line 115
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "EXPORT_SESSION_TIME"

    .line 117
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ACTION"

    const/4 v2, 0x0

    .line 118
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "SECURITY_LEVEL"

    .line 120
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/BackupRestoreReceiver;->getWhich(Ljava/lang/String;)I

    move-result p0

    const-string v1, "WHICH"

    invoke-virtual {p1, v1, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 123
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public registerBackupRestoreReceiver(Landroid/content/Context;)V
    .locals 2

    const-string v0, "WallpaperBackupRestoreReceiver"

    const-string/jumbo v1, "registerBackupRestoreReceiver"

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.intent.action.REQUEST_BACKUP_LOCKSCREEN"

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.intent.action.REQUEST_RESTORE_LOCKSCREEN"

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.intent.action.REQUEST_BACKUP_WALLPAPER"

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.intent.action.REQUEST_RESTORE_WALLPAPER"

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object p0, p0, Lcom/android/systemui/wallpaper/BackupRestoreReceiver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
