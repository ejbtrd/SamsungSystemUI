.class public final Lcom/android/keyguard/punchhole/VIDirectorFactory;
.super Ljava/lang/Object;
.source "VIDirectorFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final vendorName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->Companion:Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

    const-string/jumbo v0, "ro.product.vendor.name"

    .line 11
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "get(\"ro.product.vendor.name\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->vendorName:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getVendorName$cp()Ljava/lang/String;
    .locals 1

    .line 8
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->vendorName:Ljava/lang/String;

    return-object v0
.end method

.method public static final createVIDirector(Landroid/content/Context;Z)Lcom/android/keyguard/punchhole/VIDirector;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->Companion:Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;->createVIDirector(Landroid/content/Context;Z)Lcom/android/keyguard/punchhole/VIDirector;

    move-result-object p0

    return-object p0
.end method
