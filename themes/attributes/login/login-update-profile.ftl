<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "title">
        ${msg("loginProfileTitle")}
    <#elseif section = "header">
        ${msg("loginProfileTitle")}
    <#elseif section = "form">
        <form id="kc-update-profile-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
            <#if user.editUsernameAllowed>
                <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('username',properties.kcFormGroupErrorClass!)}">
                    <div class="${properties.kcLabelWrapperClass!}">
                        <label for="username" class="${properties.kcLabelClass!}">${msg("username")}</label>
                    </div>
                    <div class="${properties.kcInputWrapperClass!}">
                        <input type="text" id="username" name="username" value="${(user.username!'')}" class="${properties.kcInputClass!}"/>
                    </div>
                </div>
            </#if>
            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('email',properties.kcFormGroupErrorClass!)}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="email" class="${properties.kcLabelClass!}">${msg("email")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="text" id="email" name="email" value="${(user.email!'')}" class="${properties.kcInputClass!}" />
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('firstName',properties.kcFormGroupErrorClass!)}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="firstName" class="${properties.kcLabelClass!}">${msg("firstName")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="text" id="firstName" name="firstName" value="${(user.firstName!'')}" class="${properties.kcInputClass!}" />
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('lastName',properties.kcFormGroupErrorClass!)}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="lastName" class="${properties.kcLabelClass!}">${msg("lastName")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="text" id="lastName" name="lastName" value="${(user.lastName!'')}" class="${properties.kcInputClass!}" />
                </div>
            </div>

            <div class="form-group">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="user.attributes.gender" class="${properties.kcLabelClass!}">Gender</label>
                </div>

                <div class="${properties.kcInputWrapperClass!}">
                    <select class="${properties.kcInputClass!}"  id="user.attributes.gender" name="user.attributes.gender" value="${(register.formData['user.attributes.gender'])!''}">
                        <option>Female</option>
                        <option>Male</option>
                        <option>Other</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="user.attributes.locality" class="${properties.kcLabelClass!}">${msg("locality")}</label>
                </div>

                <div class="${properties.kcInputWrapperClass!}">
                    <input type="text" class="${properties.kcInputClass!}"  id="user.attributes.locality" name="user.attributes.locality" value="${(register.formData['user.attributes.locality'])!''}"/>
                </div>
            </div>

            <div class="form-group">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="user.attributes.country" class="${properties.kcLabelClass!}">${msg("country")}</label>
                </div>

                <div class="${properties.kcInputWrapperClass!}">
                    <select class="${properties.kcInputClass!}"  id="user.attributes.country" name="user.attributes.country" value="${(register.formData['user.attributes.country'])!''}"/>
                        <#include "countries.ftl">
                    </select>
                </div>
            </div>

            <div class="form-group">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="user.attributes.dob" class="${properties.kcLabelClass!}">Date of Birth</label>
                </div>

                <div class="${properties.kcInputWrapperClass!}">
                    <input type="date" class="${properties.kcInputClass!}"  id="user.attributes.dob" name="user.attributes.dob" value="${(register.formData['user.attributes.dob'])!''}"/>
                </div>
            </div>

            <div class="form-group">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="user.attributes.organization" class="${properties.kcLabelClass!}">College / Institution / Company</label>
                </div>

                <div class="${properties.kcInputWrapperClass!}">
                    <input type="text" class="${properties.kcInputClass!}"  id="user.attributes.organization" name="user.attributes.organization" value="${(register.formData['user.attributes.organization'])!''}"/>
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!}">
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                    </div>
                </div>

                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                    <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSubmit")}" />
                </div>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>
