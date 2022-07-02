.class Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$1;
.super Landroid/os/Handler;
.source "NotificationLightingScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$1;->this$0:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$1;->this$0:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->access$100(Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
