.class public Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;
.super Ljava/lang/Object;
.source "PluginFaceWidgetMediaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluginFaceWidgetMediaDeviceData"
.end annotation


# instance fields
.field deviceType:I

.field enabled:Z

.field icon:Landroid/graphics/drawable/Drawable;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLandroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;->enabled:Z

    .line 263
    iput-object p2, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;->icon:Landroid/graphics/drawable/Drawable;

    .line 264
    iput-object p3, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;->name:Ljava/lang/String;

    .line 265
    iput p4, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;->deviceType:I

    return-void
.end method


# virtual methods
.method public getDeviceType()I
    .locals 0

    .line 281
    iget p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;->deviceType:I

    return p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;->name:Ljava/lang/String;

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 269
    iget-boolean p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;->enabled:Z

    return p0
.end method

.method public setDeviceType(I)V
    .locals 0

    .line 297
    iput p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;->deviceType:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 285
    iput-boolean p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;->enabled:Z

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;->name:Ljava/lang/String;

    return-void
.end method
