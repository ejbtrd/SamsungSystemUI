.class final Lcom/android/systemui/controls/management/adapter/SmallControlCustomHolder;
.super Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;
.source "CustomControlAdapter.kt"


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/ui/util/ControlsUtil;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/systemui/controls/ui/util/ControlsUtil;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsUtil"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favoriteCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    sget v0, Lcom/android/systemui/R$id;->small_layout_viewstub:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;-><init>(Landroid/view/View;ILcom/android/systemui/controls/ui/util/ControlsUtil;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
