.class Lcom/android/systemui/ScreenDecorations$8;
.super Landroid/hardware/camera2/CameraManager$CameraDeviceStateCallback;
.source "ScreenDecorations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ScreenDecorations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 1168
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraDeviceStateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6

    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraDeviceStateChanged: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", facing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    invoke-static {p3}, Lcom/android/systemui/ScreenDecorations$CameraDeviceState;->cameraStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenDecorations"

    .line 1180
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_b

    if-nez p4, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 1185
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object v4, v3, Lcom/android/systemui/ScreenDecorations;->mCameraDeviceStateCallbackFilterPackage:[Ljava/lang/String;

    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 1186
    aget-object v3, v4, v2

    invoke-virtual {v3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p4, 0x1

    if-ne p2, p4, :cond_3

    .line 1192
    iget-object v2, v3, Lcom/android/systemui/ScreenDecorations;->mCameraDeviceStateMap:Ljava/util/HashMap;

    new-instance v3, Lcom/android/systemui/ScreenDecorations$CameraDeviceState;

    invoke-direct {v3, p2, p3}, Lcom/android/systemui/ScreenDecorations$CameraDeviceState;-><init>(II)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object p1, p1, Lcom/android/systemui/ScreenDecorations;->mCameraDeviceStateMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 1196
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v0

    .line 1198
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, " Change mIsFrontCameraEnable : "

    if-eqz v2, :cond_8

    .line 1199
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1200
    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object v4, v4, Lcom/android/systemui/ScreenDecorations;->mCameraDeviceStateMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/ScreenDecorations$CameraDeviceState;

    invoke-virtual {v2}, Lcom/android/systemui/ScreenDecorations$CameraDeviceState;->getCameraState()I

    move-result v2

    if-eq v2, p4, :cond_5

    if-nez v2, :cond_4

    :cond_5
    add-int/lit8 p2, p2, 0x1

    .line 1205
    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-boolean v5, v4, Lcom/android/systemui/ScreenDecorations;->mIsFrontCameraEnable:Z

    if-nez v5, :cond_4

    .line 1206
    iput-boolean p4, v4, Lcom/android/systemui/ScreenDecorations;->mIsFrontCameraEnable:Z

    .line 1207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Current cameraState : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->access$100(Lcom/android/systemui/ScreenDecorations;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1209
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p1, p4}, Lcom/android/systemui/ScreenDecorations;->access$1000(Lcom/android/systemui/ScreenDecorations;I)V

    .line 1211
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->access$1100(Lcom/android/systemui/ScreenDecorations;)[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->access$1100(Lcom/android/systemui/ScreenDecorations;)[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    move-result-object p1

    aget-object p1, p1, p4

    if-eqz p1, :cond_7

    .line 1212
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->access$1100(Lcom/android/systemui/ScreenDecorations;)[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    move-result-object p0

    aget-object p0, p0, p4

    invoke-static {p0, p4}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->access$600(Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;Z)V

    :cond_7
    return-void

    .line 1219
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clear? hole screen enabled="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-boolean v2, v2, Lcom/android/systemui/ScreenDecorations;->mIsFrontCameraEnable:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", active count="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_b

    .line 1220
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-boolean p2, p1, Lcom/android/systemui/ScreenDecorations;->mIsFrontCameraEnable:Z

    if-eqz p2, :cond_b

    const/4 p2, 0x3

    if-ne p3, p2, :cond_b

    .line 1224
    iput-boolean v0, p1, Lcom/android/systemui/ScreenDecorations;->mIsFrontCameraEnable:Z

    .line 1225
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Current newCameraState : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->access$100(Lcom/android/systemui/ScreenDecorations;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1227
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->access$1200(Lcom/android/systemui/ScreenDecorations;)V

    .line 1229
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->access$1100(Lcom/android/systemui/ScreenDecorations;)[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->access$1100(Lcom/android/systemui/ScreenDecorations;)[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    move-result-object p1

    aget-object p1, p1, p4

    if-eqz p1, :cond_b

    .line 1230
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object p1, p1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->isUnderDisplayCamera(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->access$1600(Lcom/android/systemui/ScreenDecorations;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->access$900(Lcom/android/systemui/ScreenDecorations;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 1231
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->access$1100(Lcom/android/systemui/ScreenDecorations;)[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    move-result-object p0

    aget-object p0, p0, p4

    invoke-static {p0, v0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->access$600(Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;Z)V

    goto :goto_1

    .line 1232
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object p1, p1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->isUnderDisplayCamera(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->access$1100(Lcom/android/systemui/ScreenDecorations;)[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    move-result-object p0

    aget-object p0, p0, p4

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->access$1700(Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;)V

    :cond_b
    :goto_1
    return-void
.end method
