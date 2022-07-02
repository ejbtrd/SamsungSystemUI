.class public final synthetic Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/view/VolumeRowView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/VolumeRowView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda12;->f$0:Lcom/android/systemui/volume/view/VolumeRowView;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda12;->f$0:Lcom/android/systemui/volume/view/VolumeRowView;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->$r8$lambda$B6wCKFKRy1ud5OwacOFB_SVnjbo(Lcom/android/systemui/volume/view/VolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method
