## Initial Setup (Only needed first time)

<details><summary>Install Git</summary>
<p>Windows: https://gitforwindows.org/<br>Mac: https://sourceforge.net/projects/git-osx-installer/files/</p></details>
<details><summary>Install Salesforce CLI</summary>
<p>https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_install_cli.htm</p></details>
<details><summary>Install VS Code</summary>
<p>https://code.visualstudio.com/docs/setup/setup-overview</p></details>
<details><summary>Install VS Code SF Extensions</summary>
<p>https://marketplace.visualstudio.com/items?itemName=salesforce.salesforcedx-vscode</p></details>
<details><summary>Clone Github repo in sr-salesforce</summary>
<p>
In VS Code Terminal:
(For git config use your name and email)

```
cd C:\Users\rbarton
git clone https://github.com/randybarton24/sr-salesforce.git
git config --global user.name "Randy Barton"
git config --global user.email "randy@solutionreach.com"
```
</p></details>

## Workflow

<details><summary>Choose a sandbox to work in, note the sandbox on Work Request</summary>
<p></p></details>
<details><summary>Pull from Github to Master to get the latest version of code</summary>
<p>
In VS Code Terminal:

```
cd C:\Users\rbarton\sr-salesforce
git pull master
```
</p></details>
<details><summary>Create new branch with the following naming convention</summary>
<p>
In VS Code Terminal:

```
cd C:\Users\rbarton\sr-salesforce
git checkout -b "feature/w-0234/Feature Name"
```
</p></details>
<details><summary>Authenticate sandbox in SFDX</summary>
<p>
In VS Code Terminal:
(Replace "dev1" with the actual sandbox name)

```
cd C:\Users\rbarton\sr-salesforce
sfdx force:auth:web:login -a dev1 -r https://test.salesforce.com
```
</p></details>
<details><summary>Push (convert/deploy) branch to sandbox</summary>
<p>
In VS Code Terminal:

```
cd C:\Users\rbarton\sr-salesforce
mkdir mdapi-src
sfdx force:source:convert -r force-app -d mdapi-src
sfdx force:mdapi:deploy -d mdapi-src -w 10 -u dev1 
Remove-Item  -path mdapi-src -recurse -force
```
</p></details>
<details><summary>Config/Code/Test</summary>
<p></p></details>
<details><summary>Pull from sandbox to local to get changes</summary>
<p>
In VS Code Terminal:

```
cd C:\Users\rbarton\sr-salesforce
sfdx force:source:retrieve -p force-app -u dev1 -x package.xml
```
</p></details>
<details><summary>Stage changes that should be kept</summary>
<p></p></details>
<details><summary>Commit changes to branch local</summary>
<p></p></details>
<details><summary>Push branch to Github</summary>
<p>
In VS Code Terminal:

```
cd C:\Users\rbarton\sr-salesforce
git push -u origin HEAD
```
</p></details>
<details><summary>Repeat until Work Request complete</summary>
<p></p></details>
<details><summary>Create Pull Request to merge branch</summary>
<p></p></details>
<details><summary>Review Pull Request</summary>
<p></p></details>
<details><summary>Merge branch to master</summary>
<p></p></details>