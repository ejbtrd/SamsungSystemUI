.class public Lcom/samsung/android/edgelighting/reflection/hardware/RefInputManager;
.super Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;
.source "RefInputManager.java"


# static fields
.field private static sInstance:Lcom/samsung/android/edgelighting/reflection/hardware/RefInputManager;


# instance fields
.field public SEM_INPUT_FEATURE_AOT:I

.field public SEM_INPUT_FEATURE_MASK:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/samsung/android/edgelighting/reflection/hardware/RefInputManager;
    .locals 2

    const-class v0, Lcom/samsung/android/edgelighting/reflection/hardware/RefInputManager;

    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, Lcom/samsung/android/edgelighting/reflection/hardware/RefInputManager;->sInstance:Lcom/samsung/android/edgelighting/reflection/hardware/RefInputManager;

    if-nez v1, :cond_0

    .line 15
    new-instance v1, Lcom/samsung/android/edgelighting/reflection/hardware/RefInputManager;

    invoke-direct {v1}, Lcom/samsung/android/edgelighting/reflection/hardware/RefInputManager;-><init>()V

    sput-object v1, Lcom/samsung/android/edgelighting/reflection/hardware/RefInputManager;->sInstance:Lcom/samsung/android/edgelighting/reflection/hardware/RefInputManager;

    .line 17
    :cond_0
    sget-object v1, Lcom/samsung/android/edgelighting/reflection/hardware/RefInputManager;->sInstance:Lcom/samsung/android/edgelighting/reflection/hardware/RefInputManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected getBaseClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "android.hardware.input.InputManager"

    return-object p0
.end method

.method public getInstance()Landroid/hardware/input/InputManager;
    .locals 1

    const-string v0, "getInstance"

    .line 27
    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;->invokeStaticMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 28
    :cond_0
    check-cast p0, Landroid/hardware/input/InputManager;

    :goto_0
    return-object p0
.end method

.method protected loadStaticFields()V
    .locals 1

    const-string v0, "SEM_INPUT_FEATURE_MASK"

    .line 22
    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;->getIntStaticValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/edgelighting/reflection/hardware/RefInputManager;->SEM_INPUT_FEATURE_MASK:I

    const-string v0, "SEM_INPUT_FEATURE_AOT"

    .line 23
    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;->getIntStaticValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/edgelighting/reflection/hardware/RefInputManager;->SEM_INPUT_FEATURE_AOT:I

    return-void
.end method

.method public semCheckInputFeature(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    const-string/jumbo v0, "semCheckInputFeature"

    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;->checkInt(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
