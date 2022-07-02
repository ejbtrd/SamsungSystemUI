.class final Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$2;
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


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$2;

    invoke-direct {v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$2;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$2;->INSTANCE:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 749
    check-cast p1, Lcom/android/systemui/controls/management/model/MainControlModel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$2;->invoke(Lcom/android/systemui/controls/management/model/MainControlModel;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/android/systemui/controls/management/model/MainControlModel;)Z
    .locals 0
    .param p1    # Lcom/android/systemui/controls/management/model/MainControlModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 749
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/MainControlModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/controls/management/model/MainModel$Type;->SMALL_CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
