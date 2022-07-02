.class public final Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1;
.super Ljava/lang/Object;
.source "CustomControlsUiControllerImpl.kt"

# interfaces
.implements Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->createCallback(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

.field final synthetic this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1;->$onResult:Lkotlin/jvm/functions/Function1;

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServicesUpdated(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "serviceInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$getUiExecutor$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1;->$onResult:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-direct {v1, v2, p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
