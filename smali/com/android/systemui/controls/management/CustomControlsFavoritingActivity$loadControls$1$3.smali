.class final Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$3;
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
        "Landroid/service/controls/ControlsProviderInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$3;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroid/service/controls/ControlsProviderInfo;)V
    .locals 1
    .param p1    # Landroid/service/controls/ControlsProviderInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "providerInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$3;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    .line 232
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_AUTO_REMOVE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/service/controls/ControlsProviderInfo;->getAutoRemove()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$setAutoRemove$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Z)V

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->getTAG()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/controls/ui/util/ControlsProviderInfoExtension;->Companion:Lcom/android/systemui/controls/ui/util/ControlsProviderInfoExtension$Companion;

    invoke-virtual {v0, p1}, Lcom/android/systemui/controls/ui/util/ControlsProviderInfoExtension$Companion;->dump(Landroid/service/controls/ControlsProviderInfo;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "providerInfo - "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 230
    check-cast p1, Landroid/service/controls/ControlsProviderInfo;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$3;->accept(Landroid/service/controls/ControlsProviderInfo;)V

    return-void
.end method
