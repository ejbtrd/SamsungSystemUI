.class Lcom/android/systemui/edgelighting/EdgeLightingService$1;
.super Ljava/lang/Object;
.source "EdgeLightingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/EdgeLightingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$1;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$1;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$100(Lcom/android/systemui/edgelighting/EdgeLightingService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$1;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$200(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    :cond_0
    return-void
.end method
