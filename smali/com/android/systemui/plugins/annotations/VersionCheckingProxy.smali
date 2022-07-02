.class public Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;
.super Ljava/lang/Object;
.source "VersionCheckingProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/InvocationHandler;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mTargetInstance:Ljava/lang/Object;

.field private mVersionSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->mClass:Ljava/lang/Class;

    .line 18
    iput-object p2, p0, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->mTargetInstance:Ljava/lang/Object;

    .line 19
    iput-object p3, p0, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->mVersionSupplier:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->mTargetInstance:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->mClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    const-class v1, Lcom/android/systemui/plugins/annotations/SupportVersionChecker;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/annotations/SupportVersionChecker;

    const-string v1, ", target = "

    if-nez v0, :cond_1

    .line 33
    sget-object v0, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "this class not support version checking, please add @SupportVersionChecker annotation on class, class = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->mClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->mTargetInstance:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p0, p0, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->mTargetInstance:Ljava/lang/Object;

    return-object p0

    .line 37
    :cond_1
    sget-object v0, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apply version checking, class = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->mClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->mTargetInstance:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->mTargetInstance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->mClass:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 27
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->TAG:Ljava/lang/String;

    const-string v0, "mTargetInstance or class is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 43
    const-class p1, Lcom/android/systemui/plugins/annotations/VersionCheck;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/annotations/VersionCheck;

    if-eqz p1, :cond_5

    .line 44
    iget-object v0, p0, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->mVersionSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_5

    .line 45
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 46
    invoke-interface {p1}, Lcom/android/systemui/plugins/annotations/VersionCheck;->version()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 49
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    .line 51
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, p2, :cond_0

    .line 52
    invoke-interface {p1}, Lcom/android/systemui/plugins/annotations/VersionCheck;->defBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 53
    :cond_0
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, p2, :cond_1

    .line 54
    invoke-interface {p1}, Lcom/android/systemui/plugins/annotations/VersionCheck;->defInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 55
    :cond_1
    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, p2, :cond_2

    .line 56
    invoke-interface {p1}, Lcom/android/systemui/plugins/annotations/VersionCheck;->defFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 57
    :cond_2
    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, p2, :cond_3

    .line 58
    invoke-interface {p1}, Lcom/android/systemui/plugins/annotations/VersionCheck;->defLong()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 59
    :cond_3
    const-class p2, Ljava/lang/String;

    if-ne p0, p2, :cond_4

    .line 60
    invoke-interface {p1}, Lcom/android/systemui/plugins/annotations/VersionCheck;->defString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->mTargetInstance:Ljava/lang/Object;

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
