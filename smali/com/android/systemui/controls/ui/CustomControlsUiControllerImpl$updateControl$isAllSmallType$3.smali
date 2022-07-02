.class final Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$3;
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
        "Landroid/service/controls/Control;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$3;

    invoke-direct {v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$3;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$3;->INSTANCE:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$3;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/android/systemui/controls/management/model/MainControlModel;)Landroid/service/controls/Control;
    .locals 0
    .param p1    # Lcom/android/systemui/controls/management/model/MainControlModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 750
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/MainControlModel;->getControlWithState()Lcom/android/systemui/controls/ui/ControlWithState;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlWithState;->getControl()Landroid/service/controls/Control;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 750
    check-cast p1, Lcom/android/systemui/controls/management/model/MainControlModel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$3;->invoke(Lcom/android/systemui/controls/management/model/MainControlModel;)Landroid/service/controls/Control;

    move-result-object p0

    return-object p0
.end method
