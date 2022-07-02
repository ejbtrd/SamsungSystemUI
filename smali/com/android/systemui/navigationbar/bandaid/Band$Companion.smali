.class public final Lcom/android/systemui/navigationbar/bandaid/Band$Companion;
.super Ljava/lang/Object;
.source "Band.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/bandaid/Band;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHIGH_PRIORITY()I
    .locals 0

    .line 40
    invoke-static {}, Lcom/android/systemui/navigationbar/bandaid/Band;->access$getHIGH_PRIORITY$cp()I

    move-result p0

    return p0
.end method

.method public final getLOW_PRIORITY()I
    .locals 0

    .line 42
    invoke-static {}, Lcom/android/systemui/navigationbar/bandaid/Band;->access$getLOW_PRIORITY$cp()I

    move-result p0

    return p0
.end method

.method public final getMID_PRIORITY()I
    .locals 0

    .line 41
    invoke-static {}, Lcom/android/systemui/navigationbar/bandaid/Band;->access$getMID_PRIORITY$cp()I

    move-result p0

    return p0
.end method
