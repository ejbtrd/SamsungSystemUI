.class final Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;
.super Ljava/lang/Object;
.source "CustomControlsUiControllerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1;->onServicesUpdated(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $onResult:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $serviceInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->$onResult:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->$serviceInfos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->$onResult:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$getControlsUtil$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Lcom/android/systemui/controls/ui/util/ControlsUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$getContext$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->$serviceInfos:Ljava/util/List;

    invoke-virtual {v1, v2, p0}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->getListOfServices(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
