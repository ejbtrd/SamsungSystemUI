.class public Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;
.super Ljava/lang/Object;
.source "FaceWidgetWakefulnessLifecycleWrapper.java"


# instance fields
.field private mObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field private mPluginFaceWidget:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper$1;-><init>(Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;)V

    iput-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;->mObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 47
    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;)Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;->mPluginFaceWidget:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    return-object p0
.end method


# virtual methods
.method public initPlugin(Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;->mPluginFaceWidget:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    return-void
.end method
