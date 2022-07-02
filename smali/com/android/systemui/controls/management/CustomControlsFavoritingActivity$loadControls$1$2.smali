.class final Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$2;
.super Ljava/lang/Object;
.source "CustomControlsFavoritingActivity.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->loadControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$2;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 230
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$2;->accept(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$2;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-static {p0, p1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$setCancelLoadRunnable$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Ljava/lang/Runnable;)V

    return-void
.end method
