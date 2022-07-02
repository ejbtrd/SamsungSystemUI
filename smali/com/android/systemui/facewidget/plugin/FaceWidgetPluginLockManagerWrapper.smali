.class public Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;
.super Ljava/lang/Object;
.source "FaceWidgetPluginLockManagerWrapper.java"

# interfaces
.implements Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetLockManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;
    }
.end annotation


# instance fields
.field private mCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/systemui/plugins/facewidget/PluginLockStarStateCallback;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/PluginLockMediator;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;->mCallbackMap:Ljava/util/HashMap;

    .line 27
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    return-void
.end method


# virtual methods
.method public addLockStarStateCallback(Lcom/android/systemui/plugins/facewidget/PluginLockStarStateCallback;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;

    invoke-direct {v0, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;-><init>(Lcom/android/systemui/plugins/facewidget/PluginLockStarStateCallback;)V

    .line 84
    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeLockStarStateCallback(Lcom/android/systemui/plugins/facewidget/PluginLockStarStateCallback;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 90
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;

    if-nez v0, :cond_1

    return-void

    .line 100
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;->destroy()V

    .line 101
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method
