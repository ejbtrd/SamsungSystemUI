.class public final Lcom/android/systemui/controls/ui/ToggleRangeBehavior$Companion;
.super Ljava/lang/Object;
.source "ToggleRangeBehavior.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/ToggleRangeBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInProgress()Z
    .locals 0

    .line 74
    invoke-static {}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->access$getInProgress$cp()Z

    move-result p0

    return p0
.end method

.method public final setInProgress(Z)V
    .locals 0

    .line 74
    invoke-static {p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->access$setInProgress$cp(Z)V

    return-void
.end method
