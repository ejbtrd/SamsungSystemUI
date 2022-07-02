.class public final synthetic Lcom/android/systemui/volume/view/VolumeIcon$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/view/VolumeIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/VolumeIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/volume/view/VolumeIcon;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeIcon$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/volume/view/VolumeIcon;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {p0, p1}, Lcom/android/systemui/volume/view/VolumeIcon;->$r8$lambda$p_68ICTqoO9g72CDLeUtplaNU0M(Lcom/android/systemui/volume/view/VolumeIcon;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method
