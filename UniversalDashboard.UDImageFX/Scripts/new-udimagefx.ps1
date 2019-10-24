<#
.SYNOPSIS
    Sample control for UniversalDashboard.
.DESCRIPTION
    Sample control function for UniversalDashboard. Adds an image effect to your web images.
.PARAMETER Id
    An id for the component default value will be generated by new-guid.
.EXAMPLE
    PS C:\> New-UDImageFx -Image "http://get-cmd.com/wp-content/uploads/2017/11/universaldashboard.png" -Animation flipInX -Duration 4s
    animates the UD logo over 4 seconds
.NOTES
    Found this here https://www.npmjs.com/package/react-image-appear if you want to make it better help contribute. Thanks
#>
function New-UDImageFX {
    param(
        [Parameter()]
        [string]$Id = (New-Guid).ToString(),
        [Parameter()]
        [string]$Image,
        [Parameter()]
        [ValidateSet("fadeIn",
            "fadeInUp",
            "fadeInRight",
            "fadeInDown",
            "fadeInLeft",
            "bounceIn",
            "bounceInUp",
            "bounceInRight",
            "bounceInDown",
            "bounceInLeft",
            "flipInX",
            "flipInY",
            "zoomIn",
            "blurIn",
            "blurInUp",
            "blurInRight",
            "blurInDown",
            "blurInLeft",
            "fillIn")]
        [string]$Animation = "fadeIn",
        [Parameter()]
        [string]$Duration
    )

    End {

        @{
            # The AssetID of the main JS File
            assetId           = $AssetId
            # Tell UD this is a plugin
            isPlugin          = $true
            # This ID must be the same as the one used in the JavaScript to register the control with UD
            type              = "UD-ImageFX"
            # An ID is mandatory
            id                = $Id

            # This is where you can put any other properties. They are passed to the React control's props
            # The keys are case-sensitive in JS.
            src               = $Image
            animation         = $Animation
            animationDuration = $Duration
        }

    }
}
