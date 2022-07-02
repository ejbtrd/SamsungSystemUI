.class public final Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;
.super Ljava/lang/Object;
.source "VIDirectorFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/punchhole/VIDirectorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createVIDirector(Landroid/content/Context;)Lcom/android/keyguard/punchhole/VIDirector;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 15
    new-instance p0, Lcom/android/keyguard/punchhole/VIDirector;

    invoke-direct {p0, p1}, Lcom/android/keyguard/punchhole/VIDirector;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/VIDirector;->initialize()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final createVIDirector(Landroid/content/Context;Z)Lcom/android/keyguard/punchhole/VIDirector;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 24
    new-instance p0, Lcom/android/keyguard/punchhole/VIDirector;

    invoke-direct {p0, p1}, Lcom/android/keyguard/punchhole/VIDirector;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0, p2}, Lcom/android/keyguard/punchhole/VIDirector;->initialize(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getVendorName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 11
    invoke-static {}, Lcom/android/keyguard/punchhole/VIDirectorFactory;->access$getVendorName$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
