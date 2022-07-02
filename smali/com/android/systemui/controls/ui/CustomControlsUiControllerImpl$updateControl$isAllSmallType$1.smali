.class final Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CustomControlsUiControllerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->updateControl$isAllSmallType(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Landroid/service/controls/Control;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/systemui/controls/management/model/MainControlModel;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $c:Landroid/service/controls/Control;


# direct methods
.method constructor <init>(Landroid/service/controls/Control;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$1;->$c:Landroid/service/controls/Control;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 748
    check-cast p1, Lcom/android/systemui/controls/management/model/MainControlModel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$1;->invoke(Lcom/android/systemui/controls/management/model/MainControlModel;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/android/systemui/controls/management/model/MainControlModel;)Z
    .locals 1
    .param p1    # Lcom/android/systemui/controls/management/model/MainControlModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/MainControlModel;->getStructure()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$1;->$c:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
