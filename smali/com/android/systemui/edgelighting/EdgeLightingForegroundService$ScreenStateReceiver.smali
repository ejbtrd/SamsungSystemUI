.class Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EdgeLightingForegroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;


# direct methods
.method private constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$1;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 77
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_1
    :goto_0
    return-void
.end method
