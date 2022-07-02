.class public Lcom/samsung/android/edgelighting/reflection/app/PendingIntentReflection;
.super Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;
.source "PendingIntentReflection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBaseClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "android.app.PendingIntent"

    return-object p0
.end method

.method public isActivity(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const-string v0, "isActivity"

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
