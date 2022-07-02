.class public Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;
.super Ljava/lang/Object;
.source "PluginFaceWidgetMediaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluginFaceWidgetMediaAction"
.end annotation


# instance fields
.field action:Ljava/lang/Runnable;

.field contentDescription:Ljava/lang/CharSequence;

.field drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;Ljava/lang/CharSequence;)V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;->drawable:Landroid/graphics/drawable/Drawable;

    .line 226
    iput-object p2, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;->action:Ljava/lang/Runnable;

    .line 227
    iput-object p3, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;->contentDescription:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/Runnable;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;->action:Ljava/lang/Runnable;

    return-object p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;->contentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;->drawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setAction(Ljava/lang/Runnable;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;->action:Ljava/lang/Runnable;

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;->contentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;->drawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
