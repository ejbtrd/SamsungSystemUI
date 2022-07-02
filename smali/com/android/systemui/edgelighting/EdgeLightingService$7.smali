.class Lcom/android/systemui/edgelighting/EdgeLightingService$7;
.super Ljava/lang/Object;
.source "EdgeLightingService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 962
    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$7;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 965
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$7;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p2}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$902(Lcom/android/systemui/edgelighting/EdgeLightingService;Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;)Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 970
    invoke-static {}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onServiceDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$7;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$902(Lcom/android/systemui/edgelighting/EdgeLightingService;Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;)Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    return-void
.end method
