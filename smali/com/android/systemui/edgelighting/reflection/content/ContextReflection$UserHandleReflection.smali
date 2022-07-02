.class Lcom/android/systemui/edgelighting/reflection/content/ContextReflection$UserHandleReflection;
.super Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;
.source "ContextReflection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserHandleReflection"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/edgelighting/reflection/content/ContextReflection$1;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/reflection/content/ContextReflection$UserHandleReflection;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBaseClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "android.os.UserHandle"

    return-object p0
.end method
