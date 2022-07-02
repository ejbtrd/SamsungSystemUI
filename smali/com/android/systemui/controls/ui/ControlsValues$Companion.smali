.class public final Lcom/android/systemui/controls/ui/ControlsValues$Companion;
.super Ljava/lang/Object;
.source "ControlsValues.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/ControlsValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/controls/ui/ControlsValues$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEMPTY_COMPONENT()Landroid/content/ComponentName;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 12
    invoke-static {}, Lcom/android/systemui/controls/ui/ControlsValues;->access$getEMPTY_COMPONENT$cp()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final getEMPTY_COMPONENT_INFO()Lcom/android/systemui/controls/controller/ComponentInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    invoke-static {}, Lcom/android/systemui/controls/ui/ControlsValues;->access$getEMPTY_COMPONENT_INFO$cp()Lcom/android/systemui/controls/controller/ComponentInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getEMPTY_STRUCTURE()Lcom/android/systemui/controls/controller/StructureInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 13
    invoke-static {}, Lcom/android/systemui/controls/ui/ControlsValues;->access$getEMPTY_STRUCTURE$cp()Lcom/android/systemui/controls/controller/StructureInfo;

    move-result-object p0

    return-object p0
.end method
