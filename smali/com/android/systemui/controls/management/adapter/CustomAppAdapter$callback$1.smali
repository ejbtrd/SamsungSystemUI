.class public final Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1;
.super Ljava/lang/Object;
.source "CustomAppAdapter.kt"

# interfaces
.implements Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/lifecycle/Lifecycle;Lcom/android/systemui/controls/management/ControlsListingController;Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;Landroid/content/Context;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $backgroundExecutor:Ljava/util/concurrent/Executor;

.field final synthetic $uiExecutor:Ljava/util/concurrent/Executor;

.field final synthetic this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1;->$backgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1;->$uiExecutor:Ljava/util/concurrent/Executor;

    .line 61
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

    .line 63
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1;->$backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1;

    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1;->$uiExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2, p1, p0}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1;-><init>(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;Ljava/util/List;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
