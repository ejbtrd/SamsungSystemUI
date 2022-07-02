.class public final Lcom/android/systemui/controls/controller/ControlInfo$Companion;
.super Ljava/lang/Object;
.source "ControlInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/controller/ControlInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/controls/controller/ControlInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromControl(Landroid/service/controls/Control;)Lcom/android/systemui/controls/controller/ControlInfo;
    .locals 4
    .param p1    # Landroid/service/controls/Control;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "control"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance p0, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 50
    invoke-virtual {p1}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "control.controlId"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "control.title"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Landroid/service/controls/Control;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "control.subtitle"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Landroid/service/controls/Control;->getDeviceType()I

    move-result v3

    .line 49
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/controls/controller/ControlInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 55
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_LAYOUT_TYPE:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlInfo;->getCustomControlInfo()Lcom/android/systemui/controls/controller/CustomControlInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/controls/Control;->getLayoutType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/controls/controller/CustomControlInfo;->setLayoutType(I)V

    :cond_0
    return-object p0
.end method
