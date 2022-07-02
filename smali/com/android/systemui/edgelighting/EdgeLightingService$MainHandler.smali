.class Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;
.super Landroid/os/Handler;
.source "EdgeLightingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/EdgeLightingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;


# direct methods
.method private constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V
    .locals 0

    .line 941
    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingService;Lcom/android/systemui/edgelighting/EdgeLightingService$1;)V
    .locals 0

    .line 941
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2

    .line 945
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 950
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 947
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$1500(Lcom/android/systemui/edgelighting/EdgeLightingService;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
