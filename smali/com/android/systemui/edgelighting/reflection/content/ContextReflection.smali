.class public Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;
.super Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;
.source "ContextReflection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/edgelighting/reflection/content/ContextReflection$UserHandleReflection;
    }
.end annotation


# instance fields
.field private mUserHandle:Lcom/android/systemui/edgelighting/reflection/content/ContextReflection$UserHandleReflection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;-><init>()V

    return-void
.end method


# virtual methods
.method public createPackageContextAsUser(Ljava/lang/Object;Ljava/lang/String;II)Landroid/content/Context;
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 19
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 22
    iget-object v4, p0, Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;->mUserHandle:Lcom/android/systemui/edgelighting/reflection/content/ContextReflection$UserHandleReflection;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 23
    new-instance v4, Lcom/android/systemui/edgelighting/reflection/content/ContextReflection$UserHandleReflection;

    invoke-direct {v4, v5}, Lcom/android/systemui/edgelighting/reflection/content/ContextReflection$UserHandleReflection;-><init>(Lcom/android/systemui/edgelighting/reflection/content/ContextReflection$1;)V

    iput-object v4, p0, Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;->mUserHandle:Lcom/android/systemui/edgelighting/reflection/content/ContextReflection$UserHandleReflection;

    .line 25
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;->mUserHandle:Lcom/android/systemui/edgelighting/reflection/content/ContextReflection$UserHandleReflection;

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v6, v3

    invoke-virtual {v4, v1, v6}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->createInstance([Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Class;

    .line 26
    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v3

    aput-object v2, v4, v0

    const-class v2, Landroid/os/UserHandle;

    const/4 v6, 0x2

    aput-object v2, v4, v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    .line 29
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    aput-object p4, v1, v6

    const-string p2, "createPackageContextAsUser"

    invoke-virtual {p0, p1, p2, v4, v1}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 30
    move-object v5, p0

    check-cast v5, Landroid/content/Context;

    :cond_1
    return-object v5
.end method

.method protected getBaseClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "android.content.Context"

    return-object p0
.end method
