.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl$Companion;
.super Ljava/lang/Object;
.source "ControlsControllerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/controller/ControlsControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSUGGESTED_CONTROLS_PER_STRUCTURE()I
    .locals 0

    .line 82
    invoke-static {}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$getSUGGESTED_CONTROLS_PER_STRUCTURE$cp()I

    move-result p0

    return p0
.end method
