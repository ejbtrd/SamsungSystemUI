.class public final Lcom/android/systemui/controls/ui/ControlsValues;
.super Ljava/lang/Object;
.source "ControlsValues.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/ControlsValues$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/ui/ControlsValues$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EMPTY_COMPONENT:Landroid/content/ComponentName;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EMPTY_COMPONENT_INFO:Lcom/android/systemui/controls/controller/ComponentInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EMPTY_STRUCTURE:Lcom/android/systemui/controls/controller/StructureInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/controls/ui/ControlsValues$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/ControlsValues$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/ui/ControlsValues;->Companion:Lcom/android/systemui/controls/ui/ControlsValues$Companion;

    .line 12
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, ""

    invoke-direct {v1, v2, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/systemui/controls/ui/ControlsValues;->EMPTY_COMPONENT:Landroid/content/ComponentName;

    .line 13
    new-instance v1, Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlsValues$Companion;->getEMPTY_COMPONENT()Landroid/content/ComponentName;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v3, v2, v4}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;)V

    sput-object v1, Lcom/android/systemui/controls/ui/ControlsValues;->EMPTY_STRUCTURE:Lcom/android/systemui/controls/controller/StructureInfo;

    .line 15
    new-instance v1, Lcom/android/systemui/controls/controller/ComponentInfo;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlsValues$Companion;->getEMPTY_COMPONENT()Landroid/content/ComponentName;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/controls/controller/ComponentInfo;-><init>(Landroid/content/ComponentName;Ljava/util/List;)V

    sput-object v1, Lcom/android/systemui/controls/ui/ControlsValues;->EMPTY_COMPONENT_INFO:Lcom/android/systemui/controls/controller/ComponentInfo;

    return-void
.end method

.method public static final synthetic access$getEMPTY_COMPONENT$cp()Landroid/content/ComponentName;
    .locals 1

    .line 7
    sget-object v0, Lcom/android/systemui/controls/ui/ControlsValues;->EMPTY_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method public static final synthetic access$getEMPTY_COMPONENT_INFO$cp()Lcom/android/systemui/controls/controller/ComponentInfo;
    .locals 1

    .line 7
    sget-object v0, Lcom/android/systemui/controls/ui/ControlsValues;->EMPTY_COMPONENT_INFO:Lcom/android/systemui/controls/controller/ComponentInfo;

    return-object v0
.end method

.method public static final synthetic access$getEMPTY_STRUCTURE$cp()Lcom/android/systemui/controls/controller/StructureInfo;
    .locals 1

    .line 7
    sget-object v0, Lcom/android/systemui/controls/ui/ControlsValues;->EMPTY_STRUCTURE:Lcom/android/systemui/controls/controller/StructureInfo;

    return-object v0
.end method
