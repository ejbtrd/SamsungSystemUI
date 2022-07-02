.class public Lcom/android/systemui/edgelighting/backup/EdgeLightingBRReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EdgeLightingBRReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mKiesThread:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRReceiver;->mKiesThread:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.intent.action.REQUEST_BACKUP_EDGELIGHTING"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.android.intent.action.REQUEST_RESTORE_EDGELIGHTING"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    const-string v1, "ACTION"

    .line 32
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 35
    iget-object p1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRReceiver;->mKiesThread:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 36
    sget-object p1, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRReceiver;->TAG:Ljava/lang/String;

    const-string p2, "Cancel request"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRReceiver;->mKiesThread:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRReceiver;->mKiesThread:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void
.end method
