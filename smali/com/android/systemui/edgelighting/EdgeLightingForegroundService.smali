.class public Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;
.super Landroid/app/Service;
.source "EdgeLightingForegroundService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public CHANNEL_TAG:Ljava/lang/String;

.field private mScreenStateReceiver:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;

    return-void
.end method

.method private registerScreenStateReceiver()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$1;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private unRegisterScreenStateReceiver()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 0

    .line 30
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 60
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 61
    sget-object v0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopForeground service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->unRegisterScreenStateReceiver()V

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const-string v0, "notification"

    .line 36
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "edge_lighting_chnnel_id"

    .line 37
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 39
    sget v2, Lcom/android/systemui/R$string;->edge_lighting_label:I

    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->CHANNEL_TAG:Ljava/lang/String;

    .line 40
    new-instance v2, Landroid/app/NotificationChannel;

    iget-object v4, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->CHANNEL_TAG:Ljava/lang/String;

    invoke-direct {v2, v1, v4, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 41
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 44
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "Edge lighting"

    .line 45
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "group_key_lighting"

    .line 46
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$drawable;->edge_screen_icon:I

    .line 47
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 48
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 50
    sget-object v1, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startForeground service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x1000

    .line 51
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->registerScreenStateReceiver()V

    .line 55
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method
