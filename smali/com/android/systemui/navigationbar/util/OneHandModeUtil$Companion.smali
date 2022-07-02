.class public final Lcom/android/systemui/navigationbar/util/OneHandModeUtil$Companion;
.super Ljava/lang/Object;
.source "OneHandModeUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/util/OneHandModeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/util/OneHandModeUtil$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOneHandModeInfo()Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 12
    invoke-static {}, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->access$getOneHandModeInfo$cp()Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    move-result-object p0

    return-object p0
.end method

.method public final setOneHandModeInfo(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;)V
    .locals 0
    .param p1    # Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p1}, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->access$setOneHandModeInfo$cp(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;)V

    return-void
.end method
