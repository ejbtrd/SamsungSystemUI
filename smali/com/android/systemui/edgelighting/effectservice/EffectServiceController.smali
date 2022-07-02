.class public Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;
.super Ljava/lang/Object;
.source "EffectServiceController.java"


# instance fields
.field private mAbsEdgeLightingEffectReflection:Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;

.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mComponentName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPackage:Ljava/lang/String;

.field private mStarting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mStarting:Z

    .line 63
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mContext:Landroid/content/Context;

    .line 64
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->createEdgeLightingEffect(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mAbsEdgeLightingEffectReflection:Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;

    return-void
.end method

.method private clearInflaterConstructMap(Ljava/lang/String;)V
    .locals 4

    .line 145
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearInflaterConstructMap packageName="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EffectServiceController"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 150
    :cond_0
    :try_start_0
    const-class p0, Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string/jumbo v0, "sConstructorMap"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    .line 151
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v0, 0x0

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, ""

    .line 155
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 157
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 160
    :goto_0
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 161
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 162
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 166
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 167
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 173
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception p0

    .line 171
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :cond_3
    :goto_3
    return-void
.end method

.method private convertEffectInfo(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;
    .locals 1

    .line 75
    new-instance v0, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->createBaseClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;-><init>(Ljava/lang/Class;)V

    .line 76
    invoke-virtual {v0, p1}, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->apply(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    return-object v0
.end method

.method private createEdgeLightingEffect(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "EffectServiceController"

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createEdgeLightingEffect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mPackage:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mComponentName:Ljava/lang/String;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->clearInflaterConstructMap(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/android/systemui/edgelighting/reflection/content/ReflectionContentContainer;->getContext()Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mPackage:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v1, v2, v3}, Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;->createPackageContextAsUser(Ljava/lang/Object;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mClassLoader:Ljava/lang/ClassLoader;

    .line 124
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mComponentName:Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-static {p2, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2

    .line 136
    new-instance v1, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {v1, p2, p1, v2, p0}, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;-><init>(Ljava/lang/Class;Landroid/content/Context;Landroid/content/Context;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    .line 139
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public dispatchRefresh()V
    .locals 2

    const-string v0, "EffectServiceController"

    const-string v1, "dispatchRefresh"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mAbsEdgeLightingEffectReflection:Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->update(Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;)V

    return-void
.end method

.method public dispatchStart(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V
    .locals 2

    const-string v0, "EffectServiceController"

    const-string v1, "dispatchStart"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->convertEffectInfo(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mAbsEdgeLightingEffectReflection:Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;

    invoke-virtual {v0, p1}, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->start(Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;)V

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mStarting:Z

    return-void
.end method

.method public dispatchStop()V
    .locals 2

    const-string v0, "EffectServiceController"

    const-string v1, "dispatchStop"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-boolean v1, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mStarting:Z

    if-nez v1, :cond_0

    const-string p0, "dispatchStop failed because of mStarting is false."

    .line 89
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mAbsEdgeLightingEffectReflection:Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->stop()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mStarting:Z

    return-void
.end method

.method public dispatchUpdate(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V
    .locals 2

    const-string v0, "EffectServiceController"

    const-string v1, "dispatchUpdate"

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->convertEffectInfo(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;

    move-result-object p1

    .line 83
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mAbsEdgeLightingEffectReflection:Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->update(Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;)V

    return-void
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mClassLoader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public isShowing()Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mStarting:Z

    return p0
.end method

.method public isStarting()Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mStarting:Z

    return p0
.end method

.method public setOnEventListener(Lcom/android/systemui/edgelighting/reflection/IEdgeLightingEffectCallbackReflection;)V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mAbsEdgeLightingEffectReflection:Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->setOnCallback(Lcom/android/systemui/edgelighting/reflection/IEdgeLightingEffectCallbackReflection;)V

    return-void
.end method

.method public supportEffect()Z
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mAbsEdgeLightingEffectReflection:Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->supportEffect()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "EffectServiceController"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ",mStarting="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mStarting:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
