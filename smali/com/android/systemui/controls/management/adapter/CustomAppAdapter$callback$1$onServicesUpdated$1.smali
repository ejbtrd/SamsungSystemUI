.class final Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1;
.super Ljava/lang/Object;
.source "CustomAppAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1;->onServicesUpdated(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $serviceInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $uiExecutor:Ljava/util/concurrent/Executor;

.field final synthetic this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;Ljava/util/List;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1;->$serviceInfos:Ljava/util/List;

    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1;->$uiExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    invoke-static {v0}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->access$getControlsUtil$p(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;)Lcom/android/systemui/controls/ui/util/ControlsUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    invoke-static {v2}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->access$getContext$p(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1;->$serviceInfos:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->getListOfServices(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->access$setListOfServices$p(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;Ljava/util/List;)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1;->$uiExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    new-instance v1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1$1;-><init>(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
